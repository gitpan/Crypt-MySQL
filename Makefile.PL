use ExtUtils::MakeMaker;
WriteMakefile(
    'NAME'      => 'Crypt::MySQL',
    'VERSION_FROM' => 'lib/Crypt/MySQL.pm', # finds $VERSION
    'PREREQ_PM' => {
	Test::More => 0.32,
    },
);
