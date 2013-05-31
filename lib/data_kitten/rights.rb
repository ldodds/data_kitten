module DataKitten

  # A rights statement for a {Dataset} or {Distribution}
  #
  class Rights

    # @!attribute uri
    #   @return [String] the URI for the rights statement
    attr_accessor :uri
    
    # @!attribute dataLicense
    #   @return [String] the license for the data in the dataset.
    attr_accessor :dataLicense
    
    # @!attribute contentLicense
    #   @return [String] the license for the content in the dataset.
    attr_accessor :contentLicense
    
    # @!attribute copyrightNotice
    #   @return [String] the copyright notice for the dataset.
    attr_accessor :copyrightNotice
    
    # @!attribute attributionURL
    #   @return [String] the attribution URL for the dataset.
    attr_accessor :attributionURL

    # @!attribute attributionName
    #   @return [String] the attribution name for the dataset.
    attr_accessor :attributionName

    # Create a new Rights object.
    #
    # @param options [Hash] A set of options with which to initialise the license.
    # @option options [String] :dataLicense the license for the data in the dataset
    # @option options [String] :contentLicense the license for the content in the dataset
    # @option options [String] :copyrightNotice the copyright notice for the dataset
    # @option options [String] :attributionURL the attribution URL for the dataset
    # @option options [String] :attributionName attribution name for the dataset
    def initialize(options)
      @uri = options[:uri]
      @dataLicense = options[:dataLicense]
      @contentLicense = options[:contentLicense]
      @copyrightNotice = options[:copyrightNotice]
      @attributionURL = options[:attributionURL]
      @attributionName = options[:attributionName]
    end

  end  

end