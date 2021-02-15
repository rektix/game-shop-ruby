module ApplicationHelper
    def format_date(date)
        date.strftime('%m/%d/%Y %R')
    end
end
