module Riddle
  class Configuration
    class Searchd
      NUMBER = 1.class

      def valid?
        set_listen

        !( @listen.nil? || @listen.empty? || @pid_file.nil? )
      end

      private

      def set_listen
        @listen = @listen.to_s if @listen.is_a?(NUMBER)

        return unless @listen.nil? || @listen.empty?

        @listen = []
        @listen << @port.to_s if @port
        @listen << "9306:mysql41" if @mysql41.is_a?(TrueClass)
        @listen << "#{@mysql41}:mysql41" if @mysql41.is_a?(NUMBER)

        @listen = @listen.collect { |line| "#{@address}:#{line}" } if @address
      end

      def settings
        @listen.nil? ? super : super - [:address, :port]
      end
    end
  end
end
