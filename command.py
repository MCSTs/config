# use fzf in ranger
class fzf_select(Command):
    """
    :fzf_select

    Find a file using fzf.

    With a prefix argument select only directories.

    See: https://github.com/junegunn/fzf
    """
    def execute(self):
        import subprocess
        import os.path
        if self.quantifier:
            # match only directories
            command='fdfind --type d --hidden --follow -E ".git" -E "node_modules" . /etc $HOME | fzf +m'
        else:
            # match files and directories
            command='fdfind --hidden --follow -E ".git" -E "node_modules" . /etc $HOME | fzf +m'
        fzf = self.fm.execute_command(command, universal_newlines=True, stdout=subprocess.PIPE)
        stdout, stderr = fzf.communicate()
        if fzf.returncode == 0:
            fzf_file = os.path.abspath(stdout.rstrip('\n'))
            if os.path.isdir(fzf_file):
                self.fm.cd(fzf_file)
            else:
                self.fm.select_file(fzf_file)



# rc.conf
# map <C-f> fzf_select
