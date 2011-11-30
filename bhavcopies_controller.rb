class BhavcopiesController < ApplicationController
  # GET /bhavcopies
  # GET /bhavcopies.json
  require 'net/http'
  require 'net/ftp'
  require "zip/zipfilesystem"
  require "fileutils"
  require 'csv'
  require "date"

  def index
    @bhavcopies = Bhavcopy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bhavcopies }
    end
  end

# GET /bhavcopies/1
# GET /bhavcopies/1.json
  def show
    @bhavcopy = Bhavcopy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bhavcopy }
    end
  end


# GET /bhavcopies/new
# GET /bhavcopies/new.json
  def new
    @bhavcopy = Bhavcopy.new

    respond_to do |format|
      format.html # _new.html.erb
      format.json { render :json => @bhavcopy }
    end
  end

# GET /bhavcopies/1/edit
  def edit
    @bhavcopy = Bhavcopy.find(params[:id])
  end

# POST /bhavcopies
# POST /bhavcopies.json
  def create
    @bhavcopy = Bhavcopy.new(params[:bhavcopy])

    respond_to do |format|
      if @bhavcopy.save
        format.html { redirect_to @bhavcopy, :notice => 'Bhavcopy was successfully created.' }
        format.json { render :json => @bhavcopy, :status => :created, :location => @bhavcopy }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bhavcopy.errors, :status => :unprocessable_entity }
      end
    end
  end

# PUT /bhavcopies/1
# PUT /bhavcopies/1.json
  def update
    @bhavcopy = Bhavcopy.find(params[:id])

    respond_to do |format|
      if @bhavcopy.update_attributes(params[:bhavcopy])
        format.html { redirect_to @bhavcopy, :notice => 'Bhavcopy was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bhavcopy.errors, :status => :unprocessable_entity }
      end
    end
  end

# DELETE /bhavcopies/1
# DELETE /bhavcopies/1.json
  def destroy
    @bhavcopy = Bhavcopy.find(params[:id])
    @bhavcopy.destroy

    respond_to do |format|
      format.html { redirect_to bhavcopies_url }
      format.json { head :ok }
    end
  end


  def download
    start_date=Date.parse(params[:date][:start_day]+"-"+params[:date][:start_month]+"-"+params[:date][:start_year])
    end_date=Date.parse(params[:date][:end_day]+"-"+params[:date][:end_month]+"-"+params[:date][:end_year])
    duration=(end_date-start_date).to_i
    @not_added=Array.new
    (duration+1).times do |span|
      if (DownloadedRecord.find_by_record_date(span.days.from_now(start_date)).nil?)
        real_date="eq"+span.days.from_now(start_date).strftime('%d%m%y').to_s+"_csv"
        @file_path="public/temp/#{span.days.from_now(start_date).year}/#{real_date}.zip"
        @csv_path
        if (Net::HTTP.get_response(URI.parse("http://www.bseindia.com/Hisbhav/#{real_date}.zip")).content_type=="application/x-zip-compressed")
          open("public/temp/#{span.days.from_now(start_date).year}/#{real_date}.zip", "wb") { |file| file.write(Net::HTTP.get_response(URI.parse("http://www.bseindia.com/Hisbhav/#{real_date}.zip")).body) }
          Zip::ZipFile.open(@file_path) do |file|
            dir=file.dir
            dir.entries('.').each do |entry|
              file.extract(entry, "public/temp/#{span.days.from_now(start_date).year}/#{entry}")
              @csv_path="public/temp/#{span.days.from_now(start_date).year}/#{entry}"
            end
            FileUtils.rm(@file_path)
          end
          csv_text = File.read(@csv_path)
          @csv_headers=CSV.parse(csv_text, :headers => true).first.to_s.split(",")
          @csv = CSV.parse(csv_text, :headers => true)
          @csv.shift
          @query_array=Array.new
          @csv.each_with_index do |row, index|
            if (index<10)

              if (ScCode.find_by_sc_code(row.to_s.split(",")[0].to_i).nil?)
                ScCode.create!({:sc_code=>row.to_s.split(",")[0].to_i, :sc_name=>(row.to_s.split(",")[1]).strip})
              end
              if (ScType.find_by_sc_type((row.to_s.split(",")[3]).strip).nil?)
                ScType.create!({:sc_type=>(row.to_s.split(",")[3]).strip})
              end
              if (ScGroup.find_by_sc_group((row.to_s.split(",")[2]).strip).nil?)
                ScGroup.create!({:sc_group=>(row.to_s.split(",")[2]).strip})
              end
              @bhavcopy=Bhavcopy.new
              @bhavcopy.sc_code_id=ScCode.find_by_sc_code(row.to_s.split(",")[0].to_i).id
              @bhavcopy.sc_group_id=ScGroup.find_by_sc_group((row.to_s.split(",")[2]).strip)
              @bhavcopy.sc_type_id=ScType.find_by_sc_type((row.to_s.split(",")[3]).strip)
              @bhavcopy.open=row.to_s.split(",")[4].to_f
              @bhavcopy.high= row.to_s.split(",")[5].to_f
              @bhavcopy.low= row.to_s.split(",")[6].to_f
              @bhavcopy.close= row.to_s.split(",")[7].to_f
              @bhavcopy.last=row.to_s.split(",")[8].to_f
              @bhavcopy.prevclose=row.to_s.split(",")[9].to_f
              @bhavcopy.no_trades=row.to_s.split(",")[10].to_i
              @bhavcopy.no_of_shrs=row.to_s.split(",")[11].to_i
              @bhavcopy.net_turnov=row.to_s.split(",")[12].to_i
              @bhavcopy.tdcloindi=row.to_s.split(",")[13]
              @bhavcopy.day_no=span.days.from_now(start_date).day
              @bhavcopy.month_no=span.days.from_now(start_date).month
              @bhavcopy.year_no=span.days.from_now(start_date).year
              @bhavcopy.save
            end
            #@query=Hash.new
            #@csv_headers.each_with_index do |h, index|
            #  @field_name=h
            #  if (index!=1)
            #    if (index<=3)
            #      @field_name+="_id"
            #    end
            #    @query[@field_name.downcase.to_sym]=row.to_s.split(",")[index]
            #  end
            #end
            #@query[:sc_type_id]=ScType.find_by_sc_type(@query[:sc_type_id]).id
            #@query[:sc_group_id]=ScGroup.find_by_sc_group(@query[:sc_group_id]).id
            #@query[:sc_code_id]=ScCode.find_by_sc_code(@query[:sc_code_id]).id
            #Bhavcopy.create!(@query)
          end
          FileUtils.rm(@csv_path)
          DownloadedRecord.create!({:record_date=>span.days.from_now(start_date)})
          @not_added<<"#{span.days.from_now(start_date).strftime('%d-%b-%y')} Records downloaded successfully"
        else
          @not_added<<"#{span.days.from_now(start_date).strftime('%d-%b-%y')} Records not found"
        end
      else
        @not_added<<"#{span.days.from_now(start_date).strftime('%d-%b-%y')} Records already downloaded"
      end
    end
  end


  def data_generator
    GeneratedBhav.delete_all
    #@current_date=Date.parse("6/14/2011")
    @all_companies=SelectedCompany.all
    @all_companies.each do |company|
      @current_date=Date.parse("6/14/2011")
      @last_rec=Bhavcopy.find_last_by_sc_code_id(company.sc_code_id)
      @mu=@last_rec.close
      @sigma=1
      @rate=0.1
      #@T=@investment_input.tenure #*250).to_f/365.to_f
      @delta_t=1.to_f/240 #*(@investment_input.tenure)).to_f
      @u=Math.exp(@sigma*(Math.sqrt(@delta_t)))
      @d=1/@u.to_f
      @a=Math.exp(@rate*@delta_t)
      @probability=100*((@a-@d)/(@u-@d))
      #@last_s<<@mu.to_f
      240.times do |hour_no|
        if (rand(100)<@probability)
          @mu*=@u
        else
          @mu*=@d
        end
        @new_bhav=GeneratedBhav.new
        @new_bhav.sc_code_id=company.sc_code_id
        @new_bhav.bhav=@mu.to_f
        @new_bhav.day=((hour_no/8).days.from_now(@current_date)).day
        @new_bhav.month=((hour_no/8).days.from_now(@current_date)).month
        @new_bhav.year=((hour_no/8).days.from_now(@current_date)).year
        @new_bhav.hour=(hour_no%8)+10
        @new_bhav.save
        #@current_date=1.days.from_now(@current_date)
      end
    end
  end


  def today_company_data
    @sc_code=ScCode.find(params[:sc_code_id])
    @temp=GeneratedBhav.find_last_by_sc_code_id(@sc_code.id)
    @today_data=GeneratedBhav.find_all_by_sc_code_id_and_day_and_month_and_year(@temp.sc_code_id,@temp.day, @temp.month, @temp.year)
    render :partial => 'today_data', :layout => false
  end

  def one_company_data
    @sc_code=ScCode.find(params[:sc_code_id])
    #render :partial => 'today_data', :layout => false
    #@interval_type=params[:interval_type]
    @current_date_time=DateTime.parse("10/14/2011")
    #if (@interval_type=='hour')
    @company_data=GeneratedBhav.find_all_by_sc_code_id(@sc_code.id)
        #elsif (@interval_type=='day')
    #elsif (@interval_type=='month')
    #else
    #end
    render :partial => 'one_company_data', :layout => false
    #render :layout=>false
  end
end

