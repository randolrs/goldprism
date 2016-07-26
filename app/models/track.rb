class Track < ActiveRecord::Base

	belongs_to :user


	has_attached_file :mp3,
	  :storage => :s3,
	  :path => "sounds/:id/:style.:extension",
	  :bucket  => "sounds"

	#validates_attachment_content_type :mp3, :content_type => ['audio/mpeg']


	validates_attachment_content_type :mp3, :content_type => /.*/






	# before_validation :convert_to_mp3


	# def reconvert_to_mp3
	#   wavfile = Tempfile.new(".wav")
	#   wavfile.binmode

	#   open(wav.url) do |f|
	#     wavfile << f.read
	#   end

	#   wavfile.close

	#   convert_tempfile(wavfile)
	# end


	# def convert_to_mp3
	#   tempfile = wav.queued_for_write[:original]

	#   unless tempfile.nil?
	#     convert_tempfile(tempfile)
	#   end
	# end


	# def convert_tempfile(tempfile)
	#   dst = Tempfile.new(".mp3")

	#   cmd_args = [File.expand_path(tempfile.path), File.expand_path(dst.path)]
	#   system("lame", *cmd_args)

	#   dst.binmode
	#   io = StringIO.new(dst.read)
	#   dst.close

	#   io.original_filename = "sound.mp3"
	#   io.content_type = "audio/mpeg"

	#   self.mp3 = io
	# end



end
