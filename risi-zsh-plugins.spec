Name:           risi-zsh-plugins
Version:        1.0
Release:        1%{?dist}
Summary:        risiOS's implementation of ZSH 

License:        GPL v3
URL:            https://github.com/risiOS/risi-zsh
Source0:        https://github.com/risiOS/risi-zsh/archive/refs/heads/master.tar.gz

BuildArch:	noarch
Requires:	zsh
Requires:	zsh-syntax-highlighting
Requires:	zsh-autosuggestions
Requires:	risifetch
Requires:	micro

%description
risiOS's implementation of ZSH 

%prep
%autosetup -n %{name}-master

%build
%install
mkdir -p %{buildroot}%{_sysconfdir}/skel
mkdir -p %{buildroot}%{_datadir}

cp -a plugins %{buildroot}%{_datadir}/risi-zsh-plugins
cp .zshrc %{buildroot}%{_sysconfdir}/skel

%files
# %license add-license-file-here
# %doc add-docs-here
%{_datadir}/risi-zsh-plugins

%changelog
* Wed Apr 27 2022 PizzaLovingNerd
- First spec file
