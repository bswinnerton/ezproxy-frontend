# app/views/layouts/bobcat.rb
module Views
  module Layouts
    class Bobcat < ActionView::Mustache
      def login
        nil
      end

      def institution
        nil
      end

      def sidebar
        render :partial => "shared/sidebar"
      end

      def breadcrumbs
        breadcrumbs = []
        breadcrumbs.pop
        breadcrumbs << link_to('EZProxy', root_url)
        return breadcrumbs
      end

      # Tabs
      def show_tabs
        false
      end

      def tabs
        []
      end

      def active_tab? code
        nil
      end
    end
  end
end
