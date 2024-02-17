create table Admin_BadStillImageURL
(
    id                   int identity,
    ExpeditiondDataID_FK int,
    ExpeditionID         int,
    HtmlError            varchar(50),
    URL                  varchar(1024)
)
go

grant delete, insert, select, update on Admin_BadStillImageURL to [public]
go

create table Calendar
(
    dt        smalldatetime not null
        primary key
            with (fillfactor = 90),
    UTCOffset smallint
)
go

create table CamlogData_1988
(
    DatetimeGMT  datetime not null constraint CK_CamlogData_1988 check (DatetimeGMT IS NOT NULL),
    DeviceID     int not null,
    EpochSecs    int,
    LoadID_FK    int  not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1988
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1988
    on CamlogData_1988 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1989
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1989
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1989
    on CamlogData_1989 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1990
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1990
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1990
    on CamlogData_1990 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1991
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1991
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1991
    on CamlogData_1991 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1992
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1992
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1992
    on CamlogData_1992 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1993
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1993
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1993
    on CamlogData_1993 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1994
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1994
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1994
    on CamlogData_1994 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1995
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1995
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1995
    on CamlogData_1995 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1996
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1996
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1996
    on CamlogData_1996 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1997
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1997
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1997
    on CamlogData_1997 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1998
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1998
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1998
    on CamlogData_1998 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_1999
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_1999
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_1999
    on CamlogData_1999 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2000
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2000
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2000
    on CamlogData_2000 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2001
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2001
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2001
    on CamlogData_2001 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2002
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2002
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2002
    on CamlogData_2002 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2003
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2003
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2003
    on CamlogData_2003 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2004
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2004
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2004
    on CamlogData_2004 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2005
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2005
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2005
    on CamlogData_2005 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2006
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2006
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2006
    on CamlogData_2006 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2007
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2007
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2007
    on CamlogData_2007 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2008
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2008
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2008
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2008
    on CamlogData_2008 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2009
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2009
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2009
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2009
    on CamlogData_2009 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2010
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2010
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2010
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2010
    on CamlogData_2010 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2011
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2011
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2011
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2011
    on CamlogData_2011 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2012
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2012
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2012
    on CamlogData_2012 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2013
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2013
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2013
    on CamlogData_2013 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2014
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2014
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2014
    on CamlogData_2014 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2015
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2015
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2015
    on CamlogData_2015 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2016
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2016
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2016
    on CamlogData_2016 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2017
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2017
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2017
    on CamlogData_2017 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2018
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2018
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2018
    on CamlogData_2018 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2019
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2019
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2019
    on CamlogData_2019 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2020
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2020
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2020
    on CamlogData_2020 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2021
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2021
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2021
    on CamlogData_2021 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2022
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2022
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2022
    on CamlogData_2022 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2023
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2023
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2023
    on CamlogData_2023 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2024
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2024
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2024
    on CamlogData_2024 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2025
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2025
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2025
    on CamlogData_2025 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2026
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2026
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2026
    on CamlogData_2026 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2027
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2027
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2027
    on CamlogData_2027 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2028
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2028
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2028
    on CamlogData_2028 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2029
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2029
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2029
    on CamlogData_2029 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogData_2030
(
    DatetimeGMT  datetime not null
        constraint CK_CamlogData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    focusVolts   decimal(5, 3),
    zoomVolts    decimal(5, 3),
    irisVolts    decimal(5, 3),
    constraint PK_CamlogData_2030
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create unique index IX_CamlogData_Epochsecs_2030
    on CamlogData_2030 (DeviceID, EpochSecs)
    with (fillfactor = 90)
go

create table CamlogLoad
(
    id                int identity
        constraint PK_CamlogLoad
            primary key
                with (fillfactor = 90),
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go



create table CfgFileMonitorService
(
    id       int identity,
    active   bit not null,
    filename varchar(80)
)
go

create table CleanRovNavLoad
(
    id                int identity
        constraint PK_CleanNavLoad
            primary key
                with (fillfactor = 90),
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBLocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table CleanRovnavData_1988
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1988
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1988
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1988
    on CleanRovnavData_1988 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1988
    on CleanRovnavData_1988 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1989
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1989
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1989
    on CleanRovnavData_1989 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1989
    on CleanRovnavData_1989 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1990
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1990
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1990
    on CleanRovnavData_1990 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1990
    on CleanRovnavData_1990 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1991
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1991
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1991
    on CleanRovnavData_1991 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1991
    on CleanRovnavData_1991 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1992
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1992
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1992
    on CleanRovnavData_1992 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1992
    on CleanRovnavData_1992 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1993
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1993
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1993
    on CleanRovnavData_1993 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1993
    on CleanRovnavData_1993 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1994
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1994
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1994
    on CleanRovnavData_1994 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1994
    on CleanRovnavData_1994 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1995
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1995
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1995
    on CleanRovnavData_1995 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1995
    on CleanRovnavData_1995 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1996
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1996
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1996
    on CleanRovnavData_1996 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1996
    on CleanRovnavData_1996 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1997
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1997
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1997
    on CleanRovnavData_1997 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1997
    on CleanRovnavData_1997 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1998
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1998
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1998
    on CleanRovnavData_1998 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1998
    on CleanRovnavData_1998 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_1999
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_1999
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_1999
    on CleanRovnavData_1999 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_1999
    on CleanRovnavData_1999 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2000
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2000
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2000
    on CleanRovnavData_2000 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2000
    on CleanRovnavData_2000 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2001
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2001
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2001
    on CleanRovnavData_2001 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2001
    on CleanRovnavData_2001 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2002
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2002
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2002
    on CleanRovnavData_2002 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2002
    on CleanRovnavData_2002 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2003
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2003
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2003
    on CleanRovnavData_2003 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2003
    on CleanRovnavData_2003 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2004
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2004
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2004
    on CleanRovnavData_2004 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2004
    on CleanRovnavData_2004 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2005
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2005
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2005
    on CleanRovnavData_2005 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2005
    on CleanRovnavData_2005 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2006
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2006
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2006
    on CleanRovnavData_2006 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2006
    on CleanRovnavData_2006 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2007
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2007
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2007
    on CleanRovnavData_2007 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2007
    on CleanRovnavData_2007 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2008
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2008
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2008
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2008
    on CleanRovnavData_2008 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2008
    on CleanRovnavData_2008 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2009
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2009
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2009
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2009
    on CleanRovnavData_2009 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2009
    on CleanRovnavData_2009 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2010
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2010
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2010
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2010
    on CleanRovnavData_2010 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2010
    on CleanRovnavData_2010 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2011
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2011
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2011
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2011
    on CleanRovnavData_2011 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2011
    on CleanRovnavData_2011 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2012
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2012
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2012
    on CleanRovnavData_2012 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2012
    on CleanRovnavData_2012 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2013
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2013
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2013
    on CleanRovnavData_2013 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2013
    on CleanRovnavData_2013 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2014
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2014
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2014
    on CleanRovnavData_2014 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2014
    on CleanRovnavData_2014 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2015
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2015
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2015
    on CleanRovnavData_2015 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2015
    on CleanRovnavData_2015 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2016
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2016
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2016
    on CleanRovnavData_2016 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2016
    on CleanRovnavData_2016 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2017
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2017
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2017
    on CleanRovnavData_2017 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2017
    on CleanRovnavData_2017 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2018
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2018
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2018
    on CleanRovnavData_2018 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2018
    on CleanRovnavData_2018 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2019
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2019
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2019
    on CleanRovnavData_2019 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2019
    on CleanRovnavData_2019 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2020
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2020
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2020
    on CleanRovnavData_2020 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2020
    on CleanRovnavData_2020 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2021
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2021
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2021
    on CleanRovnavData_2021 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2021
    on CleanRovnavData_2021 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2022
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2022
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2022
    on CleanRovnavData_2022 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2022
    on CleanRovnavData_2022 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2023
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2023
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2023
    on CleanRovnavData_2023 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2023
    on CleanRovnavData_2023 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2024
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2024
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2024
    on CleanRovnavData_2024 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2024
    on CleanRovnavData_2024 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2025
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2025
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2025
    on CleanRovnavData_2025 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2025
    on CleanRovnavData_2025 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2026
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2026
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2026
    on CleanRovnavData_2026 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2026
    on CleanRovnavData_2026 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2027
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2027
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2027
    on CleanRovnavData_2027 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2027
    on CleanRovnavData_2027 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2028
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2028
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2028
    on CleanRovnavData_2028 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2028
    on CleanRovnavData_2028 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2029
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2029
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2029
    on CleanRovnavData_2029 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2029
    on CleanRovnavData_2029 (LoadID_FK)
    with (fillfactor = 90)
go

create table CleanRovnavData_2030
(
    DatetimeGMT   datetime not null
        constraint CK_CleanRovnavData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_CleanRovnavData_2030
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_CleanRovnavData_Epochsecs_2030
    on CleanRovnavData_2030 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_CleanRovnavData_LoadID_2030
    on CleanRovnavData_2030 (LoadID_FK)
    with (fillfactor = 90)
go

create table Dive
(
    DiveID               int not null
        constraint aaaaaDive_PK
            primary key
                with (fillfactor = 90),
    DeviceID             int,
    RovName              varchar(5),
    DiveNumber           int not null,
    ExpeditionID_FK      int,
    DiveStartDtg         datetime,
    DiveEndDtg           datetime,
    DiveChiefScientist   varchar(50),
    BriefAccomplishments varchar(5000),
    DiveStartTimecode    char(11),
    DiveEndTimecode      char(11),
    DiveLatMid           decimal(12, 8),
    DiveLonMid           decimal(14, 8),
    DiveDepthMid         decimal(7, 1),
    rowguid              uniqueidentifier rowguidcol
)
go

create index IDX_Dive_RovName
    on Dive (RovName)
    with (fillfactor = 90)
go

create index ChiefScientistPtcID
    on Dive (DiveChiefScientist)
    with (fillfactor = 90)
go

create index DiveNumber
    on Dive (DiveNumber)
    with (fillfactor = 90)
go

create index ExpdID_FK
    on Dive (ExpeditionID_FK)
    with (fillfactor = 90)
go




create table DiveSummary
(
    id             int identity,
    expdid         int,
    diveid         int not null
        constraint PK_DiveSummary
            primary key
                with (fillfactor = 90),
    shipid         int,
    rovid          int,
    shipname       varchar(5),
    rovname        varchar(5),
    divenumber     int,
    divestartdtg   datetime,
    diveenddtg     datetime,
    chiefscientist varchar(50),
    minshiplat     decimal(11, 8),
    maxshiplat     decimal(11, 8),
    avgshiplat     decimal(11, 8),
    minshiplon     decimal(12, 8),
    maxshiplon     decimal(12, 8),
    avgshiplon     decimal(12, 8),
    maxpressure    decimal(12, 2),
    minrovlat      decimal(11, 8),
    maxrovlat      decimal(11, 8),
    avgrovlat      decimal(11, 8),
    minrovlon      decimal(12, 8),
    maxrovlon      decimal(12, 8),
    avgrovlon      decimal(12, 8),
    ctdpcount      int,
    ctdtcount      int,
    ctdscount      int,
    ctdo2count     int,
    ctdxmisscount  int,
    ctdo2altcount  int,
    lastupdate     datetime,
    ctdconfigid    int,
    lastwho        varchar(50),
    lastwhy        varchar(2500),
    ctdplotsent    datetime,
    dirtybit0      tinyint,
    dirtybit1      tinyint,
    dirtybit2      tinyint,
    dirtybit3      tinyint,
    ctdmaxpressure decimal(12, 2)
)
go


create table DocRickettsPilotsDive
(
    DiveNumber nvarchar(20),
    localStart datetime,
    localEnd   datetime,
    timezoneID int,
    bias       float,
    gmtStart   datetime,
    gmtEnd     datetime,
    Results    varchar(4096)
)
go

create table DocRickettsPilotsDiveStaging
(
    id           int not null
        constraint PK_DiveDocRickettsStaging
            primary key
                with (fillfactor = 90),
    DiveNumber   int,
    Launch       datetime,
    Recover      datetime,
    Spare        varchar(50),
    ScientistID  int,
    SiteID       int,
    SupervisorID int,
    Purpose      varchar(2048),
    Results      varchar(2048),
    MaxDepth     float,
    WaterCurrent float,
    Wind         float,
    SeaState     float,
    VehicleID    int,
    timezoneID   int,
    timezoneBias float,
    wettime      bigint
)
go

create table DocRickettsRawCtdData_2008
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2008_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2008_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

grant select on DocRickettsRawCtdData_2008 to [public]
go

create table DocRickettsRawCtdData_2009
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2009_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2009_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2010
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2010_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2010_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2011
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2011_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2011_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2012
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2012_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2012_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2013
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2013_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2013_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2014
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2014_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2014_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2015
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2015_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2015_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2016
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2016_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2016_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

grant select on DocRickettsRawCtdData_2016 to [public]
go

create table DocRickettsRawCtdData_2017
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2017_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2017_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2018
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2018_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2018_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2019
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2019_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2019_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2020
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2020_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2020_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2021
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2021_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2021_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2022
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2022_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2022_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2023
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2023_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2023_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2024
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2024_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2024_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2025
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2025_1
            primary key nonclustered
                with (fillfactor = 90)

        constraint CK_DocRickettsRawCtdData_2025_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2026
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2026_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2026_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2027
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2027_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2027_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2028
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2028_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2028_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2029
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2029_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2029_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table DocRickettsRawCtdData_2030
(
    DatetimeGMT datetime not null
        constraint PK_DocRickettsRawCtdData_2030_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_DocRickettsRawCtdData_2030_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit,
    rovpower    bit
)
go

create table EventTable
(
    id             int identity (300, 1),
    sampletable_fk int,
    name           nvarchar(50),
    imported_fk    int
)
go

create table Expedition
(
    ExpeditionID              int not null
        constraint PK_Expedition_1
            primary key
                with (fillfactor = 90),
    DeviceID                  int,
    ShipName                  varchar(5),
    ShipSeqNum                int,
    Purpose                   varchar(8000),
    StatCode                  varchar(30),
    ExpdChiefScientist        varchar(50),
    ExpdPrincipalInvestigator varchar(50),
    ScheduledStartDtg         datetime,
    ScheduledEndDtg           datetime,
    EquipmentDesc             varchar(8000),
    Participants              varchar(2048),
    RegionDesc                varchar(2048),
    PlannedTrackDesc          varchar(6144),
    StartDtg                  datetime,
    EndDtg                    datetime,
    Accomplishments           varchar(6144),
    ScientistComments         varchar(6144),
    SciObjectivesMet          varchar(50),
    OperatorComments          varchar(2048),
    AllEquipmentFunctioned    varchar(50),
    OtherComments             varchar(2048),
    UpdatedBy                 varchar(50),
    ismodified                int
)
go

create index IDX_Expd_StartDtg
    on Expedition (ScheduledStartDtg)
    with (fillfactor = 90)
go

create index IDX_Expd_EndDtg
    on Expedition (ScheduledEndDtg)
    with (fillfactor = 90)
go

create index IDX_Expd_ChiefScientist
    on Expedition (ExpdChiefScientist)
    with (fillfactor = 90)
go

create index IDX_Expd_ChiefSci_Start_End
    on Expedition (ExpdChiefScientist, ScheduledStartDtg, ScheduledEndDtg)
    with (fillfactor = 90)
go

create index IDX_Expd_ChfSci_StartDtg
    on Expedition (ExpdChiefScientist, ScheduledStartDtg)
    with (fillfactor = 90)
go



create table ExpeditionConflict
(
    ExpeditionID              int not null,
    ShipName                  varchar(4),
    ShipSeqNum                int,
    Purpose                   varchar(4096),
    StatCode                  varchar(30),
    ExpdChiefScientist        varchar(50),
    ExpdPrincipalInvestigator varchar(50),
    ScheduledStartDtg         datetime,
    ScheduledEndDtg           datetime,
    EquipmentDesc             varchar(2048),
    Participants              varchar(2048),
    RegionDesc                varchar(2048),
    PlannedTrackDesc          varchar(6144),
    StartDtg                  datetime,
    EndDtg                    datetime,
    Accomplishments           varchar(2048),
    ScientistComments         varchar(2048),
    SciObjectivesMet          varchar(50),
    OperatorComments          varchar(2048),
    AllEquipmentFunctioned    varchar(50),
    OtherComments             varchar(2048),
    UpdatedBy                 varchar(50),
    modified                  int
)
go

create table ExpeditionData
(
    ExpeditionDataID int identity
        constraint PK_ExpeditionData
            primary key nonclustered
                with (fillfactor = 90),
    DataType         varchar(1024) not null,
    DeviceID         int,
    RovName_FK       varchar(4),
    DiveNumber_FK    int,
    ExpeditionID_FK  int,
    URL              varchar(1024) not null,
    LinkText         varchar(1024) not null,
    LinkComment      varchar(2048),
    UnixPath         varchar(1024),
    WindowsPath      varchar(1024),
    PlaceInList      int,
    InsertedBy       varchar(128)
)
go


create table Expedition_Mike
(
    ExpeditionID              int identity
        constraint aaaaaExpedition_PK
            primary key nonclustered
                with (fillfactor = 90),
    ShipName                  varchar(4),
    ShipSeqNum                int,
    Purpose                   varchar(2048),
    StatCode                  varchar(30),
    ExpdChiefScientist        varchar(50),
    ExpdPrincipleInvestigator varchar(50),
    ScheduledStartDtg         datetime,
    ScheduledEndDtg           datetime,
    EquipmentDesc             varchar(2048),
    Participants              varchar(2048),
    RegionDesc                varchar(2048),
    PlannedTrackDesc          varchar(2048),
    StartDtg                  datetime,
    EndDtg                    datetime,
    Accomplishments           varchar(2048),
    ScientistComments         varchar(2048),
    SciObjectivesMet          varchar(50),
    OperatorComments          varchar(2048),
    AllEquipmentFunctioned    varchar(50)
)
go

create index ExpdID
    on Expedition_Mike (ExpeditionID)
    with (fillfactor = 90)
go

create index ScientistPtcID
    on Expedition_Mike (ExpdChiefScientist)
    with (fillfactor = 90)
go

create index ShipSeqNum
    on Expedition_Mike (ShipSeqNum)
    with (fillfactor = 90)
go

create table Expedition_R
(
    ExpeditionID              int identity,
    ShipName                  varchar(4),
    ShipSeqNum                int,
    Purpose                   varchar(2048),
    StatCode                  varchar(30),
    ExpdChiefScientist        varchar(50),
    ExpdPrincipleInvestigator varchar(50),
    ScheduledStartDtg         datetime,
    ScheduledEndDtg           datetime,
    EquipmentDesc             varchar(2048),
    Participants              varchar(2048),
    RegionDesc                varchar(2048),
    PlannedTrackDesc          varchar(2048),
    StartDtg                  datetime,
    EndDtg                    datetime,
    Accomplishments           varchar(2048),
    ScientistComments         varchar(2048),
    SciObjectivesMet          varchar(50),
    OperatorComments          varchar(2048),
    AllEquipmentFunctioned    varchar(50)
)
go

create table FGsToProcess
(
    DiveString           nvarchar(255),
    Vehicle              nvarchar(25),
    DiveNum              int,
    Notes                nvarchar(50),
    Mission              nvarchar(255),
    DateAnnotated        smalldatetime,
    DateVfcbydived       smalldatetime,
    DateUpdateAnnotation smalldatetime
)
go

create table GeoOrigin
(
    Area      varchar(50),
    Latitude  decimal(18, 8),
    Longitude decimal(18, 8),
    Elevation decimal(18, 2)
)
go

create table [Group]
(
    GroupID   int identity
        constraint PK_Group
            primary key nonclustered
                with (fillfactor = 90),
    GroupName varchar(50),
    rowguid   uniqueidentifier rowguidcol
)
go

create table History_CamlogLoad
(
    modified          datetime not null,
    resultof          varchar(50),
    id                int,
    deviceID          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_CleanRovNavLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int not null,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    isShipnavMerged   bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_Dive
(
    modified             datetime,
    resultof             varchar(50),
    DiveID               int not null,
    DeviceID             int,
    RovName              varchar(4),
    DiveNumber           int not null,
    ExpeditionID_FK      int,
    DiveStartDtg         datetime,
    DiveEndDtg           datetime,
    DiveChiefScientist   varchar(50),
    BriefAccomplishments varchar(5000),
    DiveStartTimecode    char(11),
    DiveEndTimecode      char(11),
    DiveLatMid           decimal(12, 8),
    DiveLonMid           decimal(14, 8),
    DiveDepthMid         decimal(7, 1)
)
go

create table History_DiveSummary
(
    modified       datetime,
    resultof       varchar(50),
    id             int not null,
    expdid         int,
    diveid         int not null,
    shipid         int,
    rovid          int,
    shipname       varchar(5),
    rovname        varchar(4),
    divenumber     int,
    divestartdtg   datetime,
    diveenddtg     datetime,
    chiefscientist varchar(50),
    minshiplat     decimal(11, 8),
    maxshiplat     decimal(11, 8),
    avgshiplat     decimal(11, 8),
    minshiplon     decimal(12, 8),
    maxshiplon     decimal(12, 8),
    avgshiplon     decimal(12, 8),
    maxpressure    decimal(12, 2),
    minrovlat      decimal(11, 8),
    maxrovlat      decimal(11, 8),
    avgrovlat      decimal(11, 8),
    minrovlon      decimal(12, 8),
    maxrovlon      decimal(12, 8),
    avgrovlon      decimal(12, 8),
    ctdpcount      int,
    ctdtcount      int,
    ctdscount      int,
    ctdo2count     int,
    ctdxmisscount  int,
    ctdo2altcount  int,
    lastupdate     datetime,
    ctdconfigid    int,
    lastwho        varchar(50),
    lastwhy        varchar(2500),
    dirtybit0      tinyint,
    dirtybit1      tinyint,
    dirtybit2      tinyint,
    dirtybit3      tinyint,
    ctdmaxpressure decimal(12, 2)
)
go

create table History_Expedition
(
    modified                  datetime,
    resultof                  varchar(50),
    ExpeditionID              int not null,
    DeviceID                  int,
    ShipName                  varchar(5),
    ShipSeqNum                int,
    Purpose                   varchar(4096),
    StatCode                  varchar(30),
    ExpdChiefScientist        varchar(50),
    ExpdPrincipalInvestigator varchar(50),
    ScheduledStartDtg         datetime,
    ScheduledEndDtg           datetime,
    EquipmentDesc             varchar(2048),
    Participants              varchar(2048),
    RegionDesc                varchar(2048),
    PlannedTrackDesc          varchar(6144),
    StartDtg                  datetime,
    EndDtg                    datetime,
    Accomplishments           varchar(6144),
    ScientistComments         varchar(6144),
    SciObjectivesMet          varchar(50),
    OperatorComments          varchar(2048),
    AllEquipmentFunctioned    varchar(50),
    OtherComments             varchar(2048),
    UpdatedBy                 varchar(50),
    ismodified                int
)
go

create table History_LegacyCamlogLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int not null,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_MinirovLogfiles
(
    modified          datetime,
    resultof          varchar(50),
    id                int not null,
    type              varchar(20),
    yr                int,
    yrday             int,
    path              varchar(256),
    filename          varchar(256),
    isArchived        bit,
    isBlocked         bit,
    isProcessed       bit,
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int,
    actionDtg         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_MinirovRawCtdLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int         not null,
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isNavMerged       bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go

create table History_MinirovRawDvlLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int         not null,
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isNavMerged       bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go

create table History_MinirovRawNavLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int         not null,
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isCleanNavLoaded  bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go

create table History_MinirovRawRovLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int         not null,
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isNavMerged       bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go

create table History_RawCtdLoad
(
    modified             datetime,
    resultof             varchar(50),
    id                   int         not null,
    deviceid             int,
    yr                   int,
    yrday                int,
    targetTable          varchar(50) not null,
    isLoaded             bit,
    isBlocked            bit,
    isProcessed          bit,
    isSubmittedToSSDS    bit,
    isDataFilesGenerated bit,
    isCleanNavMerged     bit,
    fileName             varchar(256),
    actionDTG            datetime,
    actionDescription    varchar(256),
    comment              varchar(2048)
)
go

create table History_RawRovNavLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int not null,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_RawShipNavLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int         not null,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_RovCtdLoad
(
    modified          datetime,
    resultof          varchar(50),
    id                int         not null,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table History_Waypoint
(
    ModificationDtg datetime,
    resultof        varchar(50),
    WaypointOwnerID int,
    WaypointName    varchar(50),
    Vehicle         varchar(64),
    Latitude        decimal(12, 8),
    Longitude       decimal(14, 8),
    Depth           decimal(10, 2),
    Altitude        decimal(10, 2),
    Heading         decimal(10, 2),
    CMG             decimal(10, 2),
    Speed           decimal(10, 2),
    CreateDTG       datetime,
    ExpireDTG       datetime,
    Comment         varchar(5000),
    Modified        bit,
    rowguid         uniqueidentifier,
    clientIP        varchar(50)
)
go

grant select on History_Waypoint to [public]
go

create table ImportedTable
(
    id         int identity (100, 1),
    startdate  datetime,
    enddate    datetime,
    namedthing varchar(50)
)
go

create table LegacyCamlogData_1988
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1988
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1988
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1989
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1989
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1990
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1990
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1991
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1991
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1992
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1992
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1993
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1993
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1994
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1994
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1995
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1995
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1996
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1996
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1997
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1997
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1998
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1998
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_1999
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_1999
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2000
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2000
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2001
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2001
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2002
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2002
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2003
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2003
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2004
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2004
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2005
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2005
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2006
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2006
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogData_2007
(
    DatetimeGMT  datetime not null
        constraint CK_LegacyCamlogData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceID     int      not null,
    EpochSecs    int,
    LoadID_FK    int      not null,
    betaTimecode varchar(11),
    hdTimecode   varchar(11),
    mainFocus    smallint,
    mainZoom     smallint,
    mainIris     smallint,
    constraint PK_LegacyCamlogData_2007
        primary key (DatetimeGMT, DeviceID)
            with (fillfactor = 90)
)
go

create table LegacyCamlogLoad
(
    id                int identity
        constraint PK_LegacyCamlogLoad
            primary key
                with (fillfactor = 90),
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go



create table MinirovLogfiles
(
    id                int identity (5000, 1)
        constraint PK_MinirovLogfiles
            primary key
                with (fillfactor = 90),
    type              varchar(20),
    yr                int,
    yrday             int,
    path              varchar(256),
    filename          varchar(256),
    isArchived        bit,
    isBlocked         bit,
    isProcessed       bit,
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int,
    actionDtg         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go



create table MinirovRawCtdData_2012
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2012
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2013
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2013
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2014
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2014
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2015
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2015
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2016
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2016
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2017
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2017
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2018
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2018
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2019
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2019
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2020
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2020
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2021
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2021
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2022
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2022
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2023
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2023
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2024
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2024
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2025
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2025
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2026
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2026
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2027
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2027
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2028
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2028
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2029
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2029
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2030
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2030
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2031
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2031
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2031
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2032
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2032
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2032
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2033
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2033
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2033
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2034
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2034
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2034
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2035
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2035
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2035
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2036
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2036
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2036
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2037
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2037
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2037
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2038
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2038
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2038
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2039
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2039
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2039
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdData_2040
(
    DatetimeGMT     datetime not null
        constraint CK2_MinirovRawCtdData_2040
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    p               decimal(7, 1),
    d               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    o2alt           decimal(7, 3),
    t2              decimal(7, 3),
    c2              decimal(7, 5),
    analog1         decimal(7, 4),
    analog2         decimal(7, 4),
    analog3         decimal(7, 4),
    analog4         decimal(7, 4),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    pFlag           tinyint,
    tFlag           tinyint,
    cFlag           tinyint,
    sFlag           tinyint,
    o2Flag          tinyint,
    t2Flag          tinyint,
    c2Flag          tinyint,
    o2altFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int,
    constraint PK2_MinirovRawCtdData_2040
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create table MinirovRawCtdLoad
(
    id                int identity (5000, 1)
        constraint PK_MinirovCtdLoad
            primary key
                with (fillfactor = 90),
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isNavMerged       bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go





create table MinirovRawDvlLoad
(
    id                int identity (5000, 1)
        constraint PK_MinirovDvlLoad
            primary key
                with (fillfactor = 90),
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isNavMerged       bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go


create table MinirovRawNavLoad
(
    id                int identity (5000, 1)
        constraint PK_MinirovNavLoad
            primary key
                with (fillfactor = 90),
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isCleanNavLoaded  bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go



create table MinirovRawRovLoad
(
    id                int identity (5000, 1)
        constraint PK_MinirovRovLoad
            primary key
                with (fillfactor = 90),
    archiveID_FK      int,
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isProcessed       bit,
    isNavMerged       bit,
    path              varchar(256),
    filename          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048),
    startDtg          datetime,
    endDtg            datetime,
    nrecords          int
)
go




create table O2AtSigmaTheta
(
    id          bigint identity,
    diveid      int,
    datetimegmt datetime,
    target      decimal(8, 3),
    sigmatheta  decimal(8, 3),
    o2          decimal(8, 3),
    lat         decimal(11, 8),
    lon         decimal(12, 8),
    n           int,
    t           decimal(8, 3),
    s           decimal(8, 3),
    p           decimal(9, 1),
    z           decimal(9, 1)
)
go

create table OLDCalendar
(
    dt        smalldatetime not null
        primary key
            with (fillfactor = 90),
    UTCOffset smallint
)
go


create table ObsLog
(
    [Sequence Number] int identity,
    [Value Time]      float,
    [Date Time]       datetime,
    Name              nvarchar(45),
    Status            nvarchar(25),
    [Obs Type]        nvarchar(25),
    [Config State]    int,
    [Corrected Obs]   float,
    Residual          float,
    [Computed Error]  float,
    MDE               float,
    [Obs Weight]      float,
    [W Statistic]     float,
    [Turnaround Time] float,
    [Sound Velocity]  float,
    Message           nvarchar(250),
    Source            nvarchar(25),
    [Source Offset]   nvarchar(25),
    Dest              nvarchar(25),
    [Dest Offset]     nvarchar(25),
    Rxer              nvarchar(25),
    [Rxer Offset]     nvarchar(25),
    Relay             nvarchar(25),
    [Relay Offset]    nvarchar(25),
    [Default Error]   float,
    [Scale Factor]    float,
    [Frequency Band]  int,
    Predicted         float,
    Innovation        float,
    [Kalman Residual] float,
    [LSQ Residual]    float
)
go

create table OldVentanaPilotsDive
(
    DiveNumber nvarchar(20),
    txtLaunch  nvarchar(20),
    txtRecover nvarchar(20),
    Date       nvarchar(20),
    gmtStart   datetime,
    gmtEnd     datetime,
    Results    varchar(4096)
)
go

create table OldVentanaPilotsDiveStaging
(
    DiveNumber nvarchar(20),
    txtLaunch  nvarchar(20),
    txtRecover nvarchar(20),
    Date       nvarchar(20),
    gmtStart   datetime,
    gmtEnd     datetime,
    Results    varchar(4096)
)
go

create table Person
(
    PersonID                int identity
        constraint PK_Person
            primary key
                with (fillfactor = 90),
    LastName                varchar(30),
    FirstName               varchar(20),
    SystemAccount           varchar(30),
    Agency                  varchar(30),
    DisplayPIPickList       bit,
    DisplayChiefSciPickList bit,
    rowguid                 uniqueidentifier rowguidcol
)
go

create unique index index_135007562
    on Person (rowguid)
    with (fillfactor = 90)
go

create table PersonGroup
(
    PG_PersonID int not null,
    PG_GroupID  int not null,
    rowguid     uniqueidentifier rowguidcol,
    constraint PK_PersonGroup
        primary key nonclustered (PG_PersonID, PG_GroupID)
            with (fillfactor = 90)
)
go





create table PlatformLookup
(
    DeviceID  int,
    ShortName char(5),
    LongName  varchar(50)
)
go

create table PositionLog
(
    [Sequence Number]  int identity,
    [Value Time]       float,
    [Date Time]        datetime,
    Name               nvarchar(25),
    [Config State]     int,
    Type               int,
    [X Position]       float,
    [Y Position]       float,
    [Z Position]       float,
    [Major Axis Angle] float,
    [Major Axis Error] float,
    [Minor Axis Error] float,
    [Z Computed Error] float,
    Heading            float,
    [X Rate]           float,
    [Y Rate]           float,
    [Z Rate]           float,
    [Heading Rate]     float,
    [Heading Error]    float,
    [X Rate Error]     float,
    [Y Rate Error]     float,
    [Z Rate Error]     float,
    Pitch              float,
    Roll               float
)
go

create table RawCtdLoad
(
    id                   int identity (5000, 1)
        constraint PK_RawCtdLoad
            primary key
                with (fillfactor = 90),
    deviceid             int,
    yr                   int,
    yrday                int,
    targetTable          varchar(50) not null,
    isLoaded             bit,
    isBlocked            bit,
    isProcessed          bit,
    isSubmittedToSSDS    bit,
    isDataFilesGenerated bit,
    isCleanNavMerged     bit,
    fileName             varchar(256),
    actionDTG            datetime,
    actionDescription    varchar(256),
    comment              varchar(2048)
)
go




create table RawRovNavLoad
(
    id                int identity
        constraint PK_RawNavLoad
            primary key
                with (fillfactor = 90),
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50),
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go


create table RawRovnavData_1988
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1988
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1988
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1988
    on RawRovnavData_1988 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1988
    on RawRovnavData_1988 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1989
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1989
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1989
    on RawRovnavData_1989 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1989
    on RawRovnavData_1989 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1990
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1990
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1990
    on RawRovnavData_1990 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1990
    on RawRovnavData_1990 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1991
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1991
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1991
    on RawRovnavData_1991 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1991
    on RawRovnavData_1991 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1992
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1992
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1992
    on RawRovnavData_1992 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1992
    on RawRovnavData_1992 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1993
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1993
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1993
    on RawRovnavData_1993 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1993
    on RawRovnavData_1993 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1994
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1994
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1994
    on RawRovnavData_1994 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1994
    on RawRovnavData_1994 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1995
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1995
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1995
    on RawRovnavData_1995 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1995
    on RawRovnavData_1995 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1996
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1996
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1996
    on RawRovnavData_1996 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1996
    on RawRovnavData_1996 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1997
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1997
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1997
    on RawRovnavData_1997 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1997
    on RawRovnavData_1997 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1998
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1998
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1998
    on RawRovnavData_1998 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1998
    on RawRovnavData_1998 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_1999
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_1999
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_1999
    on RawRovnavData_1999 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_1999
    on RawRovnavData_1999 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2000
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2000
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2000
    on RawRovnavData_2000 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2000
    on RawRovnavData_2000 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2001
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2001
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2001
    on RawRovnavData_2001 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2001
    on RawRovnavData_2001 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2002
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2002
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2002
    on RawRovnavData_2002 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2002
    on RawRovnavData_2002 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2003
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2003
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2003
    on RawRovnavData_2003 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2003
    on RawRovnavData_2003 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2004
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2004
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2004
    on RawRovnavData_2004 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2004
    on RawRovnavData_2004 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2005
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2005
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2005
    on RawRovnavData_2005 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2005
    on RawRovnavData_2005 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2006
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2006
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2006
    on RawRovnavData_2006 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2006
    on RawRovnavData_2006 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2007
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2007
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2007
    on RawRovnavData_2007 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2007
    on RawRovnavData_2007 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2008
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2008
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2008
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2008
    on RawRovnavData_2008 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2008
    on RawRovnavData_2008 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2009
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2009
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2009
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2009
    on RawRovnavData_2009 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2009
    on RawRovnavData_2009 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2010
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2010
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2010
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2010
    on RawRovnavData_2010 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2010
    on RawRovnavData_2010 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2011
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2011
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2011
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2011
    on RawRovnavData_2011 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2011
    on RawRovnavData_2011 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2012
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2012
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2012
    on RawRovnavData_2012 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2012
    on RawRovnavData_2012 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2013
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2013
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2013
    on RawRovnavData_2013 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2013
    on RawRovnavData_2013 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2014
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2014
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2014
    on RawRovnavData_2014 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2014
    on RawRovnavData_2014 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2015
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2015
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2015
    on RawRovnavData_2015 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2015
    on RawRovnavData_2015 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2016
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2016
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2016
    on RawRovnavData_2016 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2016
    on RawRovnavData_2016 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2017
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2017
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2017
    on RawRovnavData_2017 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2017
    on RawRovnavData_2017 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2018
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2018
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2018
    on RawRovnavData_2018 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2018
    on RawRovnavData_2018 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2019
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2019
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2019
    on RawRovnavData_2019 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2019
    on RawRovnavData_2019 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2020
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2020
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2020
    on RawRovnavData_2020 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2020
    on RawRovnavData_2020 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2021
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2021
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2021
    on RawRovnavData_2021 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2021
    on RawRovnavData_2021 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2022
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2022
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2022
    on RawRovnavData_2022 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2022
    on RawRovnavData_2022 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2023
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2023
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2023
    on RawRovnavData_2023 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2023
    on RawRovnavData_2023 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2024
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2024
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2024
    on RawRovnavData_2024 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2024
    on RawRovnavData_2024 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2025
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2025
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2025
    on RawRovnavData_2025 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2025
    on RawRovnavData_2025 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2026
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2026
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2026
    on RawRovnavData_2026 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2026
    on RawRovnavData_2026 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2027
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2027
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2027
    on RawRovnavData_2027 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2027
    on RawRovnavData_2027 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2028
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2028
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2028
    on RawRovnavData_2028 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2028
    on RawRovnavData_2028 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2029
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2029
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2029
    on RawRovnavData_2029 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2029
    on RawRovnavData_2029 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawRovnavData_2030
(
    DatetimeGMT   datetime not null
        constraint CK_RawRovnavData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceId      int      not null,
    EpochSecs     int,
    LoadID_FK     int      not null,
    Latitude      decimal(11, 8),
    Longitude     decimal(12, 8),
    Pressure      real,
    Depth         real,
    Altitude      real,
    Heading       real,
    Pitch         real,
    Roll          real,
    ShipLatitude  decimal(11, 8),
    ShipLongitude decimal(12, 8),
    ShipHeading   real,
    QCFlag        bit,
    constraint PK_RawRovnavData_2030
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawRovnavData_Epochsecs_2030
    on RawRovnavData_2030 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawRovnavData_LoadID_2030
    on RawRovnavData_2030 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipNavLoad
(
    id                int identity
        constraint PK_RawShipNavLoad
            primary key
                with (fillfactor = 90),
    deviceid          int,
    yr                int,
    yrday             int,
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    isSubmittedToSSDS bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go



create table RawShipnavData_1988
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1988
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int      not null,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1988
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1988
    on RawShipnavData_1988 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1988
    on RawShipnavData_1988 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1989
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1989
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1989
    on RawShipnavData_1989 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1989
    on RawShipnavData_1989 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1990
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1990
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1990
    on RawShipnavData_1990 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1990
    on RawShipnavData_1990 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1991
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1991
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1991
    on RawShipnavData_1991 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1991
    on RawShipnavData_1991 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1992
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1992
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1992
    on RawShipnavData_1992 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1992
    on RawShipnavData_1992 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1993
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1993
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1993
    on RawShipnavData_1993 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1993
    on RawShipnavData_1993 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1994
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1994
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1994
    on RawShipnavData_1994 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1994
    on RawShipnavData_1994 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1995
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1995
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1995
    on RawShipnavData_1995 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1995
    on RawShipnavData_1995 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1996
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1996
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1996
    on RawShipnavData_1996 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1996
    on RawShipnavData_1996 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1997
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1997
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1997
    on RawShipnavData_1997 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1997
    on RawShipnavData_1997 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1998
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1998
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1998
    on RawShipnavData_1998 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1998
    on RawShipnavData_1998 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_1999
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_1999
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_1999
    on RawShipnavData_1999 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_1999
    on RawShipnavData_1999 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2000
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2000
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2000
    on RawShipnavData_2000 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2000
    on RawShipnavData_2000 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2001
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2001
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2001
    on RawShipnavData_2001 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2001
    on RawShipnavData_2001 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2002
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2002
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2002
    on RawShipnavData_2002 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2002
    on RawShipnavData_2002 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2003
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2003
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2003
    on RawShipnavData_2003 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2003
    on RawShipnavData_2003 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2004
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2004
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2004
    on RawShipnavData_2004 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2004
    on RawShipnavData_2004 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2005
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2005
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2005
    on RawShipnavData_2005 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2005
    on RawShipnavData_2005 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2006
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2006
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2006
    on RawShipnavData_2006 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2006
    on RawShipnavData_2006 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2007
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2007
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2007
    on RawShipnavData_2007 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2007
    on RawShipnavData_2007 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2008
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2008
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2008
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2008
    on RawShipnavData_2008 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2008
    on RawShipnavData_2008 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2009
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2009
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2009
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2009
    on RawShipnavData_2009 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2009
    on RawShipnavData_2009 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2010
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2010
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2010
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2010
    on RawShipnavData_2010 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2010
    on RawShipnavData_2010 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2011
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2011
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2011
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2011
    on RawShipnavData_2011 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2011
    on RawShipnavData_2011 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2012
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2012
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2012
    on RawShipnavData_2012 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2012
    on RawShipnavData_2012 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2013
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2013
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2013
    on RawShipnavData_2013 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2013
    on RawShipnavData_2013 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2014
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2014
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2014
    on RawShipnavData_2014 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2014
    on RawShipnavData_2014 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2015
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2015
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2015
    on RawShipnavData_2015 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2015
    on RawShipnavData_2015 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2016
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2016
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2016
    on RawShipnavData_2016 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2016
    on RawShipnavData_2016 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2017
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2017
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2017
    on RawShipnavData_2017 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2017
    on RawShipnavData_2017 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2018
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2018
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2018
    on RawShipnavData_2018 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2018
    on RawShipnavData_2018 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2019
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2019
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2019
    on RawShipnavData_2019 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2019
    on RawShipnavData_2019 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2020
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2020
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2020
    on RawShipnavData_2020 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2020
    on RawShipnavData_2020 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2021
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2021
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2021
    on RawShipnavData_2021 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2021
    on RawShipnavData_2021 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2022
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2022
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2022
    on RawShipnavData_2022 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2022
    on RawShipnavData_2022 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2023
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2023
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2023
    on RawShipnavData_2023 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2023
    on RawShipnavData_2023 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2024
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2024
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2024
    on RawShipnavData_2024 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2024
    on RawShipnavData_2024 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2025
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2025
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2025
    on RawShipnavData_2025 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2025
    on RawShipnavData_2025 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2026
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2026
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2026
    on RawShipnavData_2026 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2026
    on RawShipnavData_2026 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2027
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2027
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2027
    on RawShipnavData_2027 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2027
    on RawShipnavData_2027 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2028
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2028
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2028
    on RawShipnavData_2028 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2028
    on RawShipnavData_2028 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2029
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2029
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2029
    on RawShipnavData_2029 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2029
    on RawShipnavData_2029 (LoadID_FK)
    with (fillfactor = 90)
go

create table RawShipnavData_2030
(
    DatetimeGMT datetime not null
        constraint CK_RawShipnavData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceId    int      not null,
    EpochSecs   int,
    LoadID_FK   int      not null,
    Latitude    decimal(11, 8),
    Longitude   decimal(12, 8),
    Heading     real,
    Dgps        bit,
    QCFlag      bit,
    constraint PK_RawShipnavData_2030
        primary key (DeviceId, DatetimeGMT)
            with (fillfactor = 90)
)
go

create unique index IX_RawShipnavData_Epochsecs_2030
    on RawShipnavData_2030 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RawShipnavData_LoadID_2030
    on RawShipnavData_2030 (LoadID_FK)
    with (fillfactor = 90)
go

create table Region
(
    RegionID          int identity
        constraint aaaaaRegion_PK
            primary key nonclustered
                with (fillfactor = 90),
    RegionName        varchar(50),
    MaxLatitude       float,
    MinLatitude       float,
    MaxLongitude      float,
    MinLongitude      float,
    RegionOwner       varchar(50),
    Comment           varchar(50),
    DisplayInPickList bit,
    rowguid           uniqueidentifier not null rowguidcol
)
go

create table ExpeditionRegion
(
    ExpeditionID_FK int not null,
    RegionID_FK     int not null
        references Region,
    constraint aaaaaExpeditionRegion_PK
        primary key nonclustered (ExpeditionID_FK, RegionID_FK)
            with (fillfactor = 90)
)
go

create index ExpdExpdRegions
    on ExpeditionRegion (ExpeditionID_FK)
    with (fillfactor = 90)
go

create index ExpdId
    on ExpeditionRegion (ExpeditionID_FK)
    with (fillfactor = 90)
go

create index ReginId
    on ExpeditionRegion (RegionID_FK)
    with (fillfactor = 90)
go

create index RegionExpdRegions
    on ExpeditionRegion (RegionID_FK)
    with (fillfactor = 90)
go

create unique index index_171147655
    on Region (rowguid)
    with (fillfactor = 90)
go

create table Results
(
    ExpeditionID              int not null,
    ShipName                  varchar(4),
    ShipSeqNum                int,
    Purpose                   varchar(2000),
    StatCode                  varchar(30),
    ExpdChiefScientist        varchar(50),
    ExpdPrincipleInvestigator varchar(50),
    ScheduledStartDtg         datetime,
    ScheduledEndDtg           datetime,
    EquipmentDesc             varchar(255),
    Participants              varchar(500),
    RegionDesc                varchar(500),
    PlannedTrackDesc          varchar(4000),
    StartDtg                  datetime,
    EndDtg                    datetime,
    Accomplishments           varchar(4000),
    ScientistComments         varchar(4000),
    SciObjectivesMet          varchar(50),
    OperatorComments          varchar(2000),
    AllEquipmentFunctioned    varchar(50)
)
go

create table RovCtdCfg
(
    id                     int identity,
    vehicle                char(4),
    cfgfileid_fk           int,
    startdtg               datetime,
    enddtg                 datetime,
    ctd_sn                 varchar(20),
    ctd_model              varchar(20),
    ctd_mfg                varchar(20),
    ctd_calibration        varchar(20),
    t_sn                   varchar(20),
    t_model                varchar(20),
    t_mfg                  varchar(20),
    t_calibration          varchar(30),
    c_sn                   varchar(20),
    c_model                varchar(20),
    c_mfg                  varchar(20),
    c_calibration          varchar(30),
    p_sn                   varchar(20),
    p_model                varchar(20),
    p_mfg                  varchar(20),
    p_calibration          varchar(30),
    p_offset               float,
    xmiss_sn               varchar(20),
    xmiss_model            varchar(20),
    xmiss_mfg              varchar(20),
    xmiss_calibration      varchar(30),
    xmiss_atodindex        int,
    xmiss_pathlength       float,
    xmiss_measureddark     float,
    xmiss_measuredvolts    float,
    xmiss_factorydark      float,
    xmiss_factoryair       float,
    xmiss_factorywater     float,
    xmiss_xm               float,
    xmiss_xb               float,
    fluor_sn               varchar(20),
    fluor_model            varchar(20),
    fluor_mfg              varchar(20),
    fluor_calibration      varchar(30),
    fluor_atodindex        int,
    ox_sn                  varchar(20),
    ox_model               varchar(20),
    ox_mfg                 varchar(20),
    ox_calibration         varchar(30),
    ox_c00                 float,
    ox_c01                 float,
    ox_c02                 float,
    ox_c03                 float,
    ox_c10                 float,
    ox_c11                 float,
    ox_c12                 float,
    ox_c13                 float,
    ox_c20                 float,
    ox_c21                 float,
    ox_c22                 float,
    ox_c23                 float,
    ox_c30                 float,
    ox_c31                 float,
    ox_c32                 float,
    ox_c33                 float,
    ox_c40                 float,
    ox_c41                 float,
    ox_c42                 float,
    ox_c43                 float,
    ox_soc                 float,
    ox_boc                 float,
    ox_voffset             float,
    ox_tcor                float,
    ox_pcor                float,
    sbe_ox_sn              varchar(20),
    sbe_ox_model           varchar(20),
    sbe_ox_mfg             varchar(20),
    sbe_ox_calibration     varchar(30),
    sbe_ox_soc             float,
    sbe_ox_boc             float,
    sbe_ox_voffset         float,
    sbe_ox_tcor            float,
    sbe_ox_pcor            float,
    sbe_ox_tau20           float,
    sbe_ox_a               float,
    sbe_ox_b               float,
    sbe_ox_c               float,
    sbe_ox_e               float,
    gmtstartdtg            datetime,
    gmtenddtg              datetime,
    sbe_ox_atodindex       int,
    sbe_ox2_sn             varchar(20),
    sbe_ox2_model          varchar(20),
    sbe_ox2_mfg            varchar(20),
    sbe_ox2_calibration    varchar(30),
    sbe_ox2_soc            float,
    sbe_ox2_boc            float,
    sbe_ox2_voffset        float,
    sbe_ox2_tcor           float,
    sbe_ox2_pcor           float,
    sbe_ox2_tau20          float,
    sbe_ox2_a              float,
    sbe_ox2_b              float,
    sbe_ox2_c              float,
    sbe_ox2_e              float,
    sbe_ox2_atodindex      int,
    sbe_ox_postcal_offset  float,
    sbe_ox_postcal_slope   float,
    sbe_ox2_postcal_offset float,
    sbe_ox2_postcal_slope  float
)
go


create table RovCtdCfg_DocRicketts
(
    id        int      not null
        constraint PK_RovCtdCfg_DocRicketts
            primary key
                with (fillfactor = 90),
    eventtime datetime not null,
    mtime     bigint,
    localtime datetime,
    length    bigint,
    chksum    bigint,
    filename  varchar(80),
    contents  varchar(5000)
)
go

create table RovCtdCfg_Ventana
(
    id        int      not null
        constraint PK_RovCtdCfg_Ventana
            primary key
                with (fillfactor = 90),
    eventtime datetime not null,
    mtime     bigint,
    localtime datetime,
    length    bigint,
    chksum    bigint,
    filename  varchar(80),
    contents  varchar(5000)
)
go

create table RovCtdLoad
(
    id                int identity
        constraint PK_RovCtdLoad
            primary key
                with (fillfactor = 90),
    targetTable       varchar(50) not null,
    isLoaded          bit,
    isBlocked         bit,
    fileName          varchar(256),
    actionDTG         datetime,
    actionDescription varchar(256),
    comment           varchar(2048)
)
go

create table RovctdBinData_1988
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1988
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1988
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1988
    on RovctdBinData_1988 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1988
    on RovctdBinData_1988 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1989
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1989
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1989
    on RovctdBinData_1989 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1989
    on RovctdBinData_1989 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1990
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1990
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1990
    on RovctdBinData_1990 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1990
    on RovctdBinData_1990 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1991
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1991
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1991
    on RovctdBinData_1991 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1991
    on RovctdBinData_1991 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1992
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1992
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1992
    on RovctdBinData_1992 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1992
    on RovctdBinData_1992 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1993
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1993
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1993
    on RovctdBinData_1993 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1993
    on RovctdBinData_1993 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1994
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1994
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1994
    on RovctdBinData_1994 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1994
    on RovctdBinData_1994 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1995
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1995
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1995
    on RovctdBinData_1995 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1995
    on RovctdBinData_1995 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1996
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1996
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1996
    on RovctdBinData_1996 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1996
    on RovctdBinData_1996 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1997
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1997
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1997
    on RovctdBinData_1997 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1997
    on RovctdBinData_1997 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1998
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1998
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1998
    on RovctdBinData_1998 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1998
    on RovctdBinData_1998 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_1999
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_1999
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_1999
    on RovctdBinData_1999 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_1999
    on RovctdBinData_1999 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2000
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2000
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2000
    on RovctdBinData_2000 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2000
    on RovctdBinData_2000 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2001
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2001
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2001
    on RovctdBinData_2001 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2001
    on RovctdBinData_2001 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2002
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2002
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2002
    on RovctdBinData_2002 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2002
    on RovctdBinData_2002 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2003
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2003
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2003
    on RovctdBinData_2003 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2003
    on RovctdBinData_2003 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2004
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2004
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2004
    on RovctdBinData_2004 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2004
    on RovctdBinData_2004 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2005
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2005
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2005
    on RovctdBinData_2005 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2005
    on RovctdBinData_2005 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2006
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2006
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2006
    on RovctdBinData_2006 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2006
    on RovctdBinData_2006 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2007
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2007
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2007
    on RovctdBinData_2007 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2007
    on RovctdBinData_2007 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2008
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2008
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2008
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2008
    on RovctdBinData_2008 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2008
    on RovctdBinData_2008 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2009
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2009
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2009
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2009
    on RovctdBinData_2009 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2009
    on RovctdBinData_2009 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2010
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2010
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2010
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2010
    on RovctdBinData_2010 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2010
    on RovctdBinData_2010 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2011
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2011
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2011
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2011
    on RovctdBinData_2011 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2011
    on RovctdBinData_2011 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2012
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2012
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2012
    on RovctdBinData_2012 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2012
    on RovctdBinData_2012 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2013
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2013
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2013
    on RovctdBinData_2013 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2013
    on RovctdBinData_2013 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2014
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2014
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2014
    on RovctdBinData_2014 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2014
    on RovctdBinData_2014 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2015
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2015
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2015
    on RovctdBinData_2015 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2015
    on RovctdBinData_2015 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2016
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2016
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2016
    on RovctdBinData_2016 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2016
    on RovctdBinData_2016 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2017
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2017
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2017
    on RovctdBinData_2017 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2017
    on RovctdBinData_2017 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2018
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2018
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2018
    on RovctdBinData_2018 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2018
    on RovctdBinData_2018 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2019
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2019
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2019
    on RovctdBinData_2019 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2019
    on RovctdBinData_2019 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2020
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2020
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2020
    on RovctdBinData_2020 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2020
    on RovctdBinData_2020 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2021
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2021
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2021
    on RovctdBinData_2021 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2021
    on RovctdBinData_2021 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2022
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2022
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2022
    on RovctdBinData_2022 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2022
    on RovctdBinData_2022 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2023
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2023
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2023
    on RovctdBinData_2023 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2023
    on RovctdBinData_2023 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2024
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2024
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2024
    on RovctdBinData_2024 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2024
    on RovctdBinData_2024 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2025
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2025
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2025
    on RovctdBinData_2025 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2025
    on RovctdBinData_2025 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2026
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2026
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2026
    on RovctdBinData_2026 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2026
    on RovctdBinData_2026 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2027
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2027
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2027
    on RovctdBinData_2027 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2027
    on RovctdBinData_2027 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2028
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2028
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2028
    on RovctdBinData_2028 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2028
    on RovctdBinData_2028 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2029
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2029
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2029
    on RovctdBinData_2029 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2029
    on RovctdBinData_2029 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdBinData_2030
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdBinData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdBinData_2030
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdBinData_EpochSecs_2030
    on RovctdBinData_2030 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdBinData_LoadID_FK_2030
    on RovctdBinData_2030 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1988
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1988
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1988
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1988
    on RovctdData_1988 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1988
    on RovctdData_1988 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1989
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1989
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1989
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1989
    on RovctdData_1989 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1989
    on RovctdData_1989 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1990
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1990
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1990
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1990
    on RovctdData_1990 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1990
    on RovctdData_1990 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1991
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1991
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1991
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1991
    on RovctdData_1991 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1991
    on RovctdData_1991 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1992
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1992
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1992
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1992
    on RovctdData_1992 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1992
    on RovctdData_1992 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1993
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1993
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1993
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1993
    on RovctdData_1993 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1993
    on RovctdData_1993 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1994
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1994
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1994
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1994
    on RovctdData_1994 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1994
    on RovctdData_1994 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1995
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1995
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1995
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1995
    on RovctdData_1995 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1995
    on RovctdData_1995 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1996
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1996
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1996
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1996
    on RovctdData_1996 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1996
    on RovctdData_1996 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1997
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1997
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1997
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1997
    on RovctdData_1997 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1997
    on RovctdData_1997 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1998
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1998
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1998
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1998
    on RovctdData_1998 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1998
    on RovctdData_1998 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_1999
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_1999
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_1999
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_1999
    on RovctdData_1999 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_1999
    on RovctdData_1999 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2000
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2000
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2000
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2000
    on RovctdData_2000 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2000
    on RovctdData_2000 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2001
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2001
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2001
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2001
    on RovctdData_2001 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2001
    on RovctdData_2001 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2002
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2002
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2002
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2002
    on RovctdData_2002 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2002
    on RovctdData_2002 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2003
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2003
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2003
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2003
    on RovctdData_2003 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2003
    on RovctdData_2003 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2004
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2004
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2004
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2004
    on RovctdData_2004 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2004
    on RovctdData_2004 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2005
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2005
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2005
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2005
    on RovctdData_2005 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2005
    on RovctdData_2005 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2006
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2006
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2006
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2006
    on RovctdData_2006 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2006
    on RovctdData_2006 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2007
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2007
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2007
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2007
    on RovctdData_2007 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2007
    on RovctdData_2007 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2008
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2008
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(6, 2),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2008
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2008
    on RovctdData_2008 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2008
    on RovctdData_2008 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2009
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2009
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2009
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2009
    on RovctdData_2009 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2009
    on RovctdData_2009 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2010
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2010
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2010
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2010
    on RovctdData_2010 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2010
    on RovctdData_2010 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2011
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2011
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2011
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2011
    on RovctdData_2011 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2011
    on RovctdData_2011 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2012
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2012
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2012
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2012
    on RovctdData_2012 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2012
    on RovctdData_2012 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2013
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2013
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2013
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2013
    on RovctdData_2013 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2013
    on RovctdData_2013 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2014
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2014
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2014
    on RovctdData_2014 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2014
    on RovctdData_2014 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2015
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2015
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2015
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2015
    on RovctdData_2015 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2015
    on RovctdData_2015 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2016
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2016
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2016
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2016
    on RovctdData_2016 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2016
    on RovctdData_2016 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2017
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2017
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2017
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2017
    on RovctdData_2017 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2017
    on RovctdData_2017 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2018
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2018
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2018
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2018
    on RovctdData_2018 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2018
    on RovctdData_2018 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2019
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2019
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2019
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2019
    on RovctdData_2019 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2019
    on RovctdData_2019 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2020
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2020
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2020
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2020
    on RovctdData_2020 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2020
    on RovctdData_2020 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2021
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2021
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2021
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2021
    on RovctdData_2021 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2021
    on RovctdData_2021 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2022
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2022
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2022
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2022
    on RovctdData_2022 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2022
    on RovctdData_2022 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2023
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2023
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2023
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2023
    on RovctdData_2023 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2023
    on RovctdData_2023 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2024
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2024
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2024
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2024
    on RovctdData_2024 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2024
    on RovctdData_2024 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2025
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2025
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2025
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2025
    on RovctdData_2025 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2025
    on RovctdData_2025 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2026
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2026
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2026
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2026
    on RovctdData_2026 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2026
    on RovctdData_2026 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2027
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2027
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2027
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2027
    on RovctdData_2027 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2027
    on RovctdData_2027 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2028
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2028
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2028
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2028
    on RovctdData_2028 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2028
    on RovctdData_2028 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2029
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2029
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2029
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2029
    on RovctdData_2029 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2029
    on RovctdData_2029 (LoadID_FK)
    with (fillfactor = 90)
go

create table RovctdData_2030
(
    DatetimeGMT     datetime not null
        constraint CK_RovctdData_2030
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    constraint PK_RovctdData_2030
        primary key (DatetimeGMT, DeviceId)
            with (fillfactor = 90)
)
go

create unique index IX_RovctdData_EpochSecs_2030
    on RovctdData_2030 (DeviceId, EpochSecs)
    with (fillfactor = 90)
go

create index IX_RovctdData_LoadID_FK_2030
    on RovctdData_2030 (LoadID_FK)
    with (fillfactor = 90)
go

create table SampleTable
(
    id          int identity (200, 1),
    startdate   datetime,
    enddate     datetime,
    imported_fk int
)
go

create table TapeSummary
(
    DiveNumber         int     not null,
    RovName            char(5) not null,
    Camera             varchar(50),
    Notes              varchar(150),
    Mission            varchar(200),
    Application        varchar(50),
    Annotators         varchar(50),
    DateAnnotated      datetime,
    AnnotationFileName varchar(50),
    RTFileEdited       varchar(5),
    Style              varchar(30),
    HoursAnnotated     decimal(6, 2),
    NumSDTapes         decimal(2),
    NumHDTapes         decimal(2),
    NumFileSegments    decimal(2),
    HoursOfVideo       decimal(6, 2),
    constraint PK_TapeSummary
        primary key (DiveNumber, RovName)
            with (fillfactor = 90)
)
go

create table Terrain
(
    TerrainName      varchar(50) not null
        constraint PK_Terrain
            primary key nonclustered
                with (fillfactor = 90),
    TopTileURL       varchar(512),
    TopImageURL      varchar(512),
    MinLat           decimal(18, 8),
    MaxLat           decimal(18, 8),
    MinLon           decimal(18, 8),
    MaxLon           decimal(18, 8),
    Viewpoint        varchar(512),
    GeoOrigin        varchar(512),
    Comment          varchar(4096),
    CenterResolution decimal(18, 1),
    NumLevels        int,
    TerrainType      nchar(16)
)
go

create table Test
(
    id   int identity,
    zeit date
)
go

create table TestRovctdData_2014
(
    DatetimeGMT     datetime not null
        constraint CK_TestRovctdData_2014
            check (DatetimeGMT IS NOT NULL),
    DeviceId        int      not null,
    EpochSecs       int,
    LoadID_FK       int      not null,
    bin             int,
    p               decimal(7, 1),
    t               decimal(7, 3),
    c               decimal(7, 5),
    s               decimal(7, 3),
    o2              decimal(7, 3),
    light           decimal(6, 2),
    oc              decimal(7, 3),
    ot              decimal(7, 3),
    trans           decimal(7, 3),
    analog1         decimal(7, 3),
    analog2         decimal(7, 3),
    analog3         decimal(7, 3),
    analog4         decimal(7, 3),
    rlat            decimal(12, 8),
    rlon            decimal(14, 8),
    elat            decimal(12, 8),
    elon            decimal(14, 8),
    ptsFlag         tinyint,
    o2Flag          tinyint,
    lightFlag       tinyint,
    analog1Flag     tinyint,
    analog2Flag     tinyint,
    analog3Flag     tinyint,
    analog4Flag     tinyint,
    latlonFlag      tinyint,
    processingID_FK int      not null,
    o2alt           decimal(7, 3),
    derived1Name    varchar(10),
    o2altFlag       tinyint,
    dzdt            decimal(7, 3),
    o2secondary     decimal(7, 3),
    o2foobar        decimal(7, 3),
    o2secondaryFlag tinyint,
    o2foo           decimal(7, 3),
    o2fooFlag       tinyint,
    constraint PK_TestRovctdData_2014
        primary key (DatetimeGMT, DeviceId)
)
go

create index IX_TestRovctdData_LoadID_FK_2014
    on TestRovctdData_2014 (LoadID_FK)
go

create unique index IX_TestRovctdData_EpochSecs_2014
    on TestRovctdData_2014 (DeviceId, EpochSecs)
go

create table TiburonPilotsDive
(
    DiveNumber nvarchar(20),
    txtLaunch  nvarchar(20),
    txtRecover nvarchar(20),
    Date       nvarchar(20),
    gmtStart   datetime,
    gmtEnd     datetime,
    Results    varchar(4096)
)
go

create table TiburonPilotsDiveStaging
(
    DiveNumber nvarchar(20),
    txtLaunch  nvarchar(20),
    txtRecover nvarchar(20),
    Date       nvarchar(20),
    gmtStart   datetime,
    gmtEnd     datetime,
    Results    varchar(4095)
)
go

create table UniqueID
(
    tableName varchar(50) not null,
    ID        int         not null
)
go

create table VentanaPilotsDive
(
    DiveNumber nvarchar(20),
    localStart datetime,
    localEnd   datetime,
    timezoneID int,
    bias       float,
    gmtStart   datetime,
    gmtEnd     datetime,
    Results    varchar(4096)
)
go

create table VentanaPilotsDiveStaging
(
    id           int not null
        constraint PK_VentanaPilotsDiveStaging
            primary key
                with (fillfactor = 90),
    DiveNumber   varchar(10),
    Launch       datetime,
    Recover      datetime,
    Spare        varchar(50),
    ScientistID  int,
    SiteID       int,
    SupervisorID int,
    Purpose      varchar(2048),
    Results      varchar(2048),
    MaxDepth     float,
    WaterCurrent float,
    Wind         float,
    SeaState     float,
    VehicleID    int,
    timezoneID   int,
    timezoneBias float,
    wettime      bigint
)
go

create table VentanaRawCtdData_2008
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2008_1
            primary key nonclustered
                with (fillfactor = 90),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8)
)
go

create table VentanaRawCtdData_2009
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2009_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2009_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2010
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2010_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2010_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2011
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2011_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2011_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2012
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2012_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2012_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2013
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2013_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2013_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2014
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2014_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2014_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2015
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2015_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2015_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2016
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2016_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2016_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2017
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2017_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2017_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2018
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2018_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2018_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2019
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2019
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2019_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2020
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2020
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2020_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2021
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2021
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2021_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2022
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2022
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2022_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2023
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2023
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2023_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2024
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2024
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2024_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2025
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2025_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2025_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2026
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2026_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2026_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2027
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2027_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2027_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2028
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2028_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2028_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2029
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2029_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2029_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table VentanaRawCtdData_2030
(
    DatetimeGMT datetime not null
        constraint PK_VentanaRawCtdData_2030_1
            primary key nonclustered
                with (fillfactor = 90)
        constraint CK_VentanaRawCtdData_2030_DTGRange
            check (DatetimeGMT IS NOT NULL),
    EpochSecs   int,
    LoadID_FK   int      not null,
    ctdusecs    int,
    t           decimal(7, 3),
    c           decimal(7, 5),
    p           decimal(7, 3),
    analog1     decimal(7, 3),
    analog2     decimal(7, 3),
    analog3     decimal(7, 3),
    analog4     decimal(7, 3),
    optodeusecs int,
    dphase      decimal(7, 4),
    rovlat      decimal(12, 8),
    rovlon      decimal(14, 8),
    shiplat     decimal(12, 8),
    ctdpower    bit,
    o2power     bit
)
go

create table Waypoint
(
    WaypointOwnerID int              not null,
    WaypointName    varchar(50)      not null
        constraint PK_Waypoint
            primary key nonclustered
                with (fillfactor = 90),
    Vehicle         varchar(64),
    Latitude        decimal(12, 8)   not null,
    Longitude       decimal(14, 8)   not null,
    Depth           decimal(10, 2),
    Altitude        decimal(10, 2),
    Heading         decimal(10, 2),
    CMG             decimal(10, 2),
    Speed           decimal(10, 2),
    CreateDTG       datetime         not null,
    ExpireDTG       datetime,
    Comment         varchar(5000),
    Modified        bit              not null,
    rowguid         uniqueidentifier not null rowguidcol,
    clientIP        varchar(50)
)
go

create unique index index_667149422
    on Waypoint (rowguid)
    with (fillfactor = 90)
go


create table ctdder
(
    usec       bigint,
    year       int,
    day        int,
    time       varchar(50),
    pres       decimal(7, 1),
    temp       decimal(7, 3),
    cond       decimal(8, 5),
    o2curr     decimal(7, 3),
    o2temp     decimal(7, 3),
    o2delta    decimal(7, 3),
    transvolt  decimal(7, 3),
    lat        decimal(12, 8),
    lon        decimal(14, 8),
    depth      decimal(7, 1),
    salin      decimal(7, 3),
    theta      decimal(7, 3),
    oxyg       decimal(6, 2),
    light      decimal(6, 2),
    beac       float,
    sound      float,
    sigmat     float,
    sigmatheta float
)
go

create table dive_list
(
    diveid       int not null,
    divestartdtg datetime
)
go

create table isoline_deep
(
    id          bigint identity,
    diveid      int,
    datetimegmt datetime,
    isoline     float,
    pressure    float,
    depth       float,
    lat         decimal(11, 8),
    lon         decimal(12, 8)
)
go

create table isoline_list
(
    isoline float not null
)
go

create table isoline_shallow
(
    id          bigint identity,
    diveid      bigint,
    datetimegmt datetime,
    isoline     float,
    pressure    float,
    depth       float,
    lat         decimal(11, 8),
    lon         decimal(12, 8)
)
go

create table scratch
(
    rovCtdDtg      datetime,
    vehicle        char(4),
    pres           decimal(7, 1),
    temper         decimal(7, 3),
    lat            decimal(12, 8),
    lon            decimal(14, 8),
    depth          decimal(7, 1),
    salin          decimal(7, 3),
    theta          decimal(7, 3),
    oxyg           decimal(6, 2),
    light          decimal(6, 2),
    beac           float,
    sound          float,
    sigmaTheta     float,
    rovCtdDtgFlag  tinyint,
    presFlag       tinyint,
    temperFlag     tinyint,
    latFlag        tinyint,
    lonFlag        tinyint,
    depthFlag      tinyint,
    salinFlag      tinyint,
    thetaFlag      tinyint,
    oxygFlag       tinyint,
    lightFlag      tinyint,
    beacFlag       tinyint,
    soundFlag      tinyint,
    sigmaThetaFlag tinyint
)
go

create table tblContact
(
    id           int identity
        constraint PK_tblContact
            primary key nonclustered
                with (fillfactor = 90),
    idPerson     int not null,
    EmailAddress varchar(20)
)
go

create table tblPerson
(
    id          int identity
        constraint PK_tblPerson
            primary key nonclustered
                with (fillfactor = 90),
    FirstName   varchar(20),
    LastName    varchar(30),
    DateOfBirth varchar(30)
)
go

create table tmp1
(
    datetimegmt datetime not null,
    dzdt        decimal(12, 3),
    p           decimal(7, 1),
    t           decimal(7, 3),
    s           decimal(7, 3),
    sigmatheta  decimal(6, 4),
    o2          decimal(6, 2)
)
go


