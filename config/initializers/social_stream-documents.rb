SocialStream::Documents.setup do |config| 
  # Configure picture thumbnails
  #
  config.picture_styles = {
    :"170x127#" => ["170x127#"],
    # this one preserves A4 proportion: 210x297
    :"80x113#" => ["80x113#"],
    :"500" => ["500>"],
    :"540x220" => ["540x220>"],
    :thumb100sq  => ["100x100#"]
   }

  # Configure audio thumbnails
  #
  # config.audio_styles = {
  #   webma: { format: 'webm'},
  #   waveform: { format: :png,
  #               convert_options: {}
  #   }
  # }

  # Configure video thumbnails
  #
  #  @@video_styles = {
  #    :webm => { :format => 'webm' },
  #    :flv  => { :format => 'flv' },
  #    :mp4  => { :format => 'mp4' },
  #    :poster  => { :format => 'png', :time => 5 },
  #    :thumb48sq  => { :geometry => "48x48" , :format => 'png', :time => 5 },
  #    :thumbwall => { :geometry => "130x97#", :format => 'png', :time => 5 }
  #  }

  # List of mime types that have an icon defined
  # config.icon_mime_types  = {
  #    default: :default,
  #    types: [
  #      :text, :image, :audio, :video
  #    ],
  #    subtypes: [
  #      :txt, :ps, :pdf, :sla, 
  #      :odt, :odp, :ods, :doc, :ppt, :xls, :rtf,
  #      :rar, :zip,
  #      :jpeg, :gif, :png, :bmp, :xcf,
  #      :wav, :ogg, :webma, :mpeg,
  #      :flv, :webm, :mp4
  #    ]
  #  }
end
