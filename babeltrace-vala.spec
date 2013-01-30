Name:       babeltrace-vala
Version:    1.0.0
Release:    3%{?dist}
Summary:    Vala bindings for babeltrace

Group:      Development/Languages
License:    LGPLv2+
URL:        http://github.com/giraldeau/babeltrace-vala
Source0:    babeltrace-vala-%{version}-1.tar.gz
BuildArch:  noarch

BuildRequires:  autoconf
BuildRequires:  vala
BuildRequires:  glib2-devel
# FIXME the following tortures rpmlint, maybe rpmlint needs to modified for this case:
Requires:       babeltrace-devel >= %{version}

%description
Vala bindings for babeltrace.

%prep
%setup -q -n babeltrace-vala

%build
./bootstrap
%configure
make %{?_smp_mflags}

%install
make install DESTDIR=%{buildroot}

%check
make %{?_smp_mflags} check

%files
%doc COPYING.LIB README TODO NEWS AUTHORS
%{_datadir}/vala/vapi/babeltrace.deps
%{_datadir}/vala/vapi/babeltrace.vapi

%changelog
