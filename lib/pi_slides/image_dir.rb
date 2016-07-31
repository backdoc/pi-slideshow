module PiSlides

  ImageDir = Struct.new(:path) do
    def file_list(pattern = '**/*.jpg')
      @file_list ||= Dir.glob(File.join(path, pattern), File::FNM_CASEFOLD).shuffle
    end

    def reset
      @file_list = nil
    end

    def random_file
      file_list.pop
    end

    def size
      file_list.size
    end
  end

end
