def check_out()

output = `tf @./tfs_scripts/checkout.tfs #{@tfs_path} #{@user} #{@domen} #{@password}`

end

def check_in()

output = `tf @./tfs_scripts/checkin.tfs`

return output[/#(\d+)/].delete("#") # removing hash and return change set number
end
