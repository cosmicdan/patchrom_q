.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 127
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 154
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 127
    :array_0
    .array-data 0x4
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x60t 0x0t 0x4t 0x1t
        0x53t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x59t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
    .end array-data

    .line 154
    :array_1
    .array-data 0x4
        0x5ct 0x0t 0x4t 0x1t
        0x5dt 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
        0x5at 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "dateString"

    .prologue
    .line 1509
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v1, dateStr:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1511
    .local v4, sb:Ljava/lang/StringBuffer;
    const/16 v0, 0x20

    .line 1512
    .local v0, ch:C
    const/4 v3, 0x0

    .line 1513
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v2, v7, :cond_2

    .line 1514
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eq v2, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 1515
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 1516
    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1517
    .local v5, year:I
    const/16 v7, 0x7f5

    if-ge v5, v7, :cond_1

    add-int/lit16 v5, v5, 0x21f

    .line 1518
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 1519
    .local v6, yearStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1, v3, v7, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1533
    .end local v5           #year:I
    .end local v6           #yearStr:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1523
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 1524
    add-int/lit8 v7, v0, 0x1

    const/16 v8, 0x30

    if-le v7, v8, :cond_5

    add-int/lit8 v7, v0, -0x1

    const/16 v8, 0x39

    if-ge v7, v8, :cond_5

    .line 1525
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1513
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1526
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1527
    add-int/lit8 v3, v2, 0x1

    .line 1528
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 1529
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #sb:Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .restart local v4       #sb:Ljava/lang/StringBuffer;
    goto :goto_1
.end method

.method private static append(Ljava/lang/StringBuilder;JZC)V
    .locals 6
    .parameter "sb"
    .parameter "value"
    .parameter "pad"
    .parameter "zeroDigit"

    .prologue
    const-wide/16 v4, 0xa

    .line 651
    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    .line 652
    if-eqz p3, :cond_0

    .line 653
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :cond_0
    :goto_0
    int-to-long v0, p4

    rem-long v2, p1, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 659
    return-void

    .line 656
    :cond_1
    int-to-long v0, p4

    div-long v2, p1, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 892
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 893
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 894
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 917
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 918
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 941
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 68
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1112
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v40

    .line 1113
    .local v40, res:Landroid/content/res/Resources;
    and-int/lit8 v65, p6, 0x1

    if-eqz v65, :cond_6

    const/16 v43, 0x1

    .line 1114
    .local v43, showTime:Z
    :goto_0
    and-int/lit8 v65, p6, 0x2

    if-eqz v65, :cond_7

    const/16 v44, 0x1

    .line 1115
    .local v44, showWeekDay:Z
    :goto_1
    and-int/lit8 v65, p6, 0x4

    if-eqz v65, :cond_8

    const/16 v45, 0x1

    .line 1116
    .local v45, showYear:Z
    :goto_2
    and-int/lit8 v65, p6, 0x8

    if-eqz v65, :cond_9

    const/16 v38, 0x1

    .line 1117
    .local v38, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v65, v0

    if-eqz v65, :cond_a

    const/16 v63, 0x1

    .line 1118
    .local v63, useUTC:Z
    :goto_4
    const v65, 0x88000

    and-int v65, v65, p6

    if-eqz v65, :cond_b

    const/4 v6, 0x1

    .line 1119
    .local v6, abbrevWeekDay:Z
    :goto_5
    const/high16 v65, 0x9

    and-int v65, v65, p6

    if-eqz v65, :cond_c

    const/4 v4, 0x1

    .line 1120
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v65, p6, 0x20

    if-eqz v65, :cond_d

    const/16 v36, 0x1

    .line 1121
    .local v36, noMonthDay:Z
    :goto_7
    const/high16 v65, 0x2

    and-int v65, v65, p6

    if-eqz v65, :cond_e

    const/16 v39, 0x1

    .line 1122
    .local v39, numericDate:Z
    :goto_8
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v65

    const-string v66, "TH"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v65

    const-string/jumbo v66, "th"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v65

    if-eqz v65, :cond_f

    const/16 v33, 0x1

    .line 1128
    .local v33, isThai:Z
    :goto_9
    cmp-long v65, p2, p4

    if-nez v65, :cond_10

    const/16 v32, 0x1

    .line 1131
    .local v32, isInstant:Z
    :goto_a
    if-eqz p7, :cond_11

    .line 1132
    new-instance v46, Landroid/text/format/Time;

    move-object/from16 v0, v46

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1138
    .local v46, startDate:Landroid/text/format/Time;
    :goto_b
    move-object/from16 v0, v46

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1142
    if-eqz v32, :cond_13

    .line 1143
    move-object/from16 v14, v46

    .line 1144
    .local v14, endDate:Landroid/text/format/Time;
    const/4 v12, 0x0

    .line 1159
    .local v12, dayDistance:I
    :goto_c
    if-nez v32, :cond_1

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v65, v0

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v66, v0

    or-int v65, v65, v66

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v66, v0

    or-int v65, v65, v66

    if-nez v65, :cond_1

    if-eqz v43, :cond_0

    const/16 v65, 0x1

    move/from16 v0, v65

    if-gt v12, v0, :cond_1

    .line 1162
    :cond_0
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v65, v0

    add-int/lit8 v65, v65, -0x1

    move/from16 v0, v65

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1163
    const/16 v65, 0x1

    move/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1166
    :cond_1
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v48, v0

    .line 1167
    .local v48, startDay:I
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v51, v0

    .line 1168
    .local v51, startMonthNum:I
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v58, v0

    .line 1170
    .local v58, startYear:I
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    .line 1171
    .local v16, endDay:I
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    .line 1172
    .local v19, endMonthNum:I
    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 1174
    .local v26, endYear:I
    const-string v57, ""

    .line 1175
    .local v57, startWeekDayString:Ljava/lang/String;
    const-string v25, ""

    .line 1176
    .local v25, endWeekDayString:Ljava/lang/String;
    if-eqz v44, :cond_2

    .line 1177
    const-string v64, ""

    .line 1178
    .local v64, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 1179
    const-string v64, "%a"

    .line 1183
    :goto_d
    move-object/from16 v0, v46

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1184
    if-eqz v32, :cond_17

    move-object/from16 v25, v57

    .line 1187
    .end local v64           #weekDayFormat:Ljava/lang/String;
    :cond_2
    :goto_e
    const-string v56, ""

    .line 1188
    .local v56, startTimeString:Ljava/lang/String;
    const-string v24, ""

    .line 1189
    .local v24, endTimeString:Ljava/lang/String;
    if-eqz v43, :cond_4

    .line 1190
    const-string v55, ""

    .line 1191
    .local v55, startTimeFormat:Ljava/lang/String;
    const-string v23, ""

    .line 1192
    .local v23, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v65, v0

    if-eqz v65, :cond_18

    const/16 v29, 0x1

    .line 1193
    .local v29, force24Hour:Z
    :goto_f
    and-int/lit8 v65, p6, 0x40

    if-eqz v65, :cond_19

    const/16 v28, 0x1

    .line 1195
    .local v28, force12Hour:Z
    :goto_10
    if-eqz v29, :cond_1a

    .line 1196
    const/16 v62, 0x1

    .line 1202
    .local v62, use24Hour:Z
    :goto_11
    if-eqz v62, :cond_1c

    .line 1203
    const v65, 0x104002d

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v55, v23

    .line 1274
    :cond_3
    :goto_12
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1275
    if-eqz v32, :cond_30

    move-object/from16 v24, v56

    .line 1282
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v55           #startTimeFormat:Ljava/lang/String;
    .end local v62           #use24Hour:Z
    :cond_4
    :goto_13
    if-eqz v45, :cond_31

    .line 1299
    :goto_14
    if-eqz v39, :cond_35

    .line 1300
    const v65, 0x1040032

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1331
    .local v13, defaultDateFormat:Ljava/lang/String;
    :goto_15
    if-eqz v44, :cond_3e

    .line 1332
    if-eqz v43, :cond_3d

    .line 1333
    const v65, 0x104004b

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1345
    .local v30, fullFormat:Ljava/lang/String;
    :goto_16
    if-eqz v36, :cond_40

    move/from16 v0, v51

    move/from16 v1, v19

    if-ne v0, v1, :cond_40

    move/from16 v0, v58

    move/from16 v1, v26

    if-ne v0, v1, :cond_40

    .line 1347
    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1348
    .local v11, dateString:Ljava/lang/String;
    if-eqz v33, :cond_5

    .line 1349
    invoke-static {v11}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1351
    :cond_5
    const-string v65, "%s"

    const/16 v66, 0x1

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v11, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    .line 1504
    .end local v11           #dateString:Ljava/lang/String;
    :goto_17
    return-object v65

    .line 1113
    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v12           #dayDistance:I
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v16           #endDay:I
    .end local v19           #endMonthNum:I
    .end local v24           #endTimeString:Ljava/lang/String;
    .end local v25           #endWeekDayString:Ljava/lang/String;
    .end local v26           #endYear:I
    .end local v30           #fullFormat:Ljava/lang/String;
    .end local v32           #isInstant:Z
    .end local v33           #isThai:Z
    .end local v36           #noMonthDay:Z
    .end local v38           #noYear:Z
    .end local v39           #numericDate:Z
    .end local v43           #showTime:Z
    .end local v44           #showWeekDay:Z
    .end local v45           #showYear:Z
    .end local v46           #startDate:Landroid/text/format/Time;
    .end local v48           #startDay:I
    .end local v51           #startMonthNum:I
    .end local v56           #startTimeString:Ljava/lang/String;
    .end local v57           #startWeekDayString:Ljava/lang/String;
    .end local v58           #startYear:I
    .end local v63           #useUTC:Z
    :cond_6
    const/16 v43, 0x0

    goto/16 :goto_0

    .line 1114
    .restart local v43       #showTime:Z
    :cond_7
    const/16 v44, 0x0

    goto/16 :goto_1

    .line 1115
    .restart local v44       #showWeekDay:Z
    :cond_8
    const/16 v45, 0x0

    goto/16 :goto_2

    .line 1116
    .restart local v45       #showYear:Z
    :cond_9
    const/16 v38, 0x0

    goto/16 :goto_3

    .line 1117
    .restart local v38       #noYear:Z
    :cond_a
    const/16 v63, 0x0

    goto/16 :goto_4

    .line 1118
    .restart local v63       #useUTC:Z
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 1119
    .restart local v6       #abbrevWeekDay:Z
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1120
    .restart local v4       #abbrevMonth:Z
    :cond_d
    const/16 v36, 0x0

    goto/16 :goto_7

    .line 1121
    .restart local v36       #noMonthDay:Z
    :cond_e
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 1122
    .restart local v39       #numericDate:Z
    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 1128
    .restart local v33       #isThai:Z
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 1133
    .restart local v32       #isInstant:Z
    :cond_11
    if-eqz v63, :cond_12

    .line 1134
    new-instance v46, Landroid/text/format/Time;

    const-string v65, "UTC"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v46       #startDate:Landroid/text/format/Time;
    goto/16 :goto_b

    .line 1136
    .end local v46           #startDate:Landroid/text/format/Time;
    :cond_12
    new-instance v46, Landroid/text/format/Time;

    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    .restart local v46       #startDate:Landroid/text/format/Time;
    goto/16 :goto_b

    .line 1146
    :cond_13
    if-eqz p7, :cond_14

    .line 1147
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1153
    .restart local v14       #endDate:Landroid/text/format/Time;
    :goto_18
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1154
    move-object/from16 v0, v46

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v65, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v65

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v49

    .line 1155
    .local v49, startJulianDay:I
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v65, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v65

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    .line 1156
    .local v17, endJulianDay:I
    sub-int v12, v17, v49

    .restart local v12       #dayDistance:I
    goto/16 :goto_c

    .line 1148
    .end local v12           #dayDistance:I
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v17           #endJulianDay:I
    .end local v49           #startJulianDay:I
    :cond_14
    if-eqz v63, :cond_15

    .line 1149
    new-instance v14, Landroid/text/format/Time;

    const-string v65, "UTC"

    move-object/from16 v0, v65

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v14       #endDate:Landroid/text/format/Time;
    goto :goto_18

    .line 1151
    .end local v14           #endDate:Landroid/text/format/Time;
    :cond_15
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .restart local v14       #endDate:Landroid/text/format/Time;
    goto :goto_18

    .line 1181
    .restart local v12       #dayDistance:I
    .restart local v16       #endDay:I
    .restart local v19       #endMonthNum:I
    .restart local v25       #endWeekDayString:Ljava/lang/String;
    .restart local v26       #endYear:I
    .restart local v48       #startDay:I
    .restart local v51       #startMonthNum:I
    .restart local v57       #startWeekDayString:Ljava/lang/String;
    .restart local v58       #startYear:I
    .restart local v64       #weekDayFormat:Ljava/lang/String;
    :cond_16
    const-string v64, "%A"

    goto/16 :goto_d

    .line 1184
    :cond_17
    move-object/from16 v0, v64

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_e

    .line 1192
    .end local v64           #weekDayFormat:Ljava/lang/String;
    .restart local v23       #endTimeFormat:Ljava/lang/String;
    .restart local v24       #endTimeString:Ljava/lang/String;
    .restart local v55       #startTimeFormat:Ljava/lang/String;
    .restart local v56       #startTimeString:Ljava/lang/String;
    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_f

    .line 1193
    .restart local v29       #force24Hour:Z
    :cond_19
    const/16 v28, 0x0

    goto/16 :goto_10

    .line 1197
    .restart local v28       #force12Hour:Z
    :cond_1a
    if-eqz v28, :cond_1b

    .line 1198
    const/16 v62, 0x0

    .restart local v62       #use24Hour:Z
    goto/16 :goto_11

    .line 1200
    .end local v62           #use24Hour:Z
    :cond_1b
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v62

    .restart local v62       #use24Hour:Z
    goto/16 :goto_11

    .line 1206
    :cond_1c
    const v65, 0x84000

    and-int v65, v65, p6

    if-eqz v65, :cond_1e

    const/4 v5, 0x1

    .line 1207
    .local v5, abbrevTime:Z
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v65, v0

    if-eqz v65, :cond_1f

    const/4 v7, 0x1

    .line 1208
    .local v7, capAMPM:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v65, v0

    if-eqz v65, :cond_20

    const/16 v37, 0x1

    .line 1209
    .local v37, noNoon:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v65, v0

    if-eqz v65, :cond_21

    const/4 v9, 0x1

    .line 1210
    .local v9, capNoon:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v65, v0

    if-eqz v65, :cond_22

    const/16 v35, 0x1

    .line 1211
    .local v35, noMidnight:Z
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v65, v0

    if-eqz v65, :cond_23

    const/4 v8, 0x1

    .line 1213
    .local v8, capMidnight:Z
    :goto_1e
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v65, v0

    if-nez v65, :cond_24

    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v65, v0

    if-nez v65, :cond_24

    const/16 v53, 0x1

    .line 1214
    .local v53, startOnTheHour:Z
    :goto_1f
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v65, v0

    if-nez v65, :cond_25

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v65, v0

    if-nez v65, :cond_25

    const/16 v21, 0x1

    .line 1215
    .local v21, endOnTheHour:Z
    :goto_20
    if-eqz v5, :cond_27

    if-eqz v53, :cond_27

    .line 1216
    if-eqz v7, :cond_26

    .line 1217
    const v65, 0x104033a

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 1233
    :goto_21
    if-nez v32, :cond_1d

    .line 1234
    if-eqz v5, :cond_2a

    if-eqz v21, :cond_2a

    .line 1235
    if-eqz v7, :cond_29

    .line 1236
    const v65, 0x104033a

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1248
    :goto_22
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v65, v0

    const/16 v66, 0xc

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_2d

    if-eqz v21, :cond_2d

    if-nez v37, :cond_2d

    .line 1249
    if-eqz v9, :cond_2c

    .line 1250
    const v65, 0x10403bc

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1263
    :cond_1d
    :goto_23
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v65, v0

    const/16 v66, 0xc

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_3

    if-eqz v53, :cond_3

    if-nez v37, :cond_3

    .line 1264
    if-eqz v9, :cond_2f

    .line 1265
    const v65, 0x10403bc

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_12

    .line 1206
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v35           #noMidnight:Z
    .end local v37           #noNoon:Z
    .end local v53           #startOnTheHour:Z
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_19

    .line 1207
    .restart local v5       #abbrevTime:Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_1a

    .line 1208
    .restart local v7       #capAMPM:Z
    :cond_20
    const/16 v37, 0x0

    goto/16 :goto_1b

    .line 1209
    .restart local v37       #noNoon:Z
    :cond_21
    const/4 v9, 0x0

    goto/16 :goto_1c

    .line 1210
    .restart local v9       #capNoon:Z
    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_1d

    .line 1211
    .restart local v35       #noMidnight:Z
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_1e

    .line 1213
    .restart local v8       #capMidnight:Z
    :cond_24
    const/16 v53, 0x0

    goto/16 :goto_1f

    .line 1214
    .restart local v53       #startOnTheHour:Z
    :cond_25
    const/16 v21, 0x0

    goto :goto_20

    .line 1219
    .restart local v21       #endOnTheHour:Z
    :cond_26
    const v65, 0x1040339

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto :goto_21

    .line 1222
    :cond_27
    if-eqz v7, :cond_28

    .line 1223
    const v65, 0x104002f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_21

    .line 1225
    :cond_28
    const v65, 0x104002e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_21

    .line 1238
    :cond_29
    const v65, 0x1040339

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1241
    :cond_2a
    if-eqz v7, :cond_2b

    .line 1242
    const v65, 0x104002f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1244
    :cond_2b
    const v65, 0x104002e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    .line 1252
    :cond_2c
    const v65, 0x10403bb

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    .line 1254
    :cond_2d
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v65, v0

    if-nez v65, :cond_1d

    if-eqz v21, :cond_1d

    if-nez v35, :cond_1d

    .line 1255
    if-eqz v8, :cond_2e

    .line 1256
    const v65, 0x10403be

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    .line 1258
    :cond_2e
    const v65, 0x10403bd

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    .line 1267
    :cond_2f
    const v65, 0x10403bb

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_12

    .line 1275
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v35           #noMidnight:Z
    .end local v37           #noNoon:Z
    .end local v53           #startOnTheHour:Z
    :cond_30
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_13

    .line 1286
    .end local v23           #endTimeFormat:Ljava/lang/String;
    .end local v28           #force12Hour:Z
    .end local v29           #force24Hour:Z
    .end local v55           #startTimeFormat:Ljava/lang/String;
    .end local v62           #use24Hour:Z
    :cond_31
    if-eqz v38, :cond_32

    .line 1288
    const/16 v45, 0x0

    goto/16 :goto_14

    .line 1289
    :cond_32
    move/from16 v0, v58

    move/from16 v1, v26

    if-eq v0, v1, :cond_33

    .line 1290
    const/16 v45, 0x1

    goto/16 :goto_14

    .line 1293
    :cond_33
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1294
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 1295
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v65, v0

    move/from16 v0, v58

    move/from16 v1, v65

    if-eq v0, v1, :cond_34

    const/16 v45, 0x1

    :goto_24
    goto/16 :goto_14

    :cond_34
    const/16 v45, 0x0

    goto :goto_24

    .line 1301
    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_35
    if-eqz v45, :cond_39

    .line 1302
    if-eqz v4, :cond_37

    .line 1303
    if-eqz v36, :cond_36

    .line 1304
    const v65, 0x1040040

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1306
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    const v65, 0x104003a

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1309
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    if-eqz v36, :cond_38

    .line 1310
    const v65, 0x104003d

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1312
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_38
    const v65, 0x1040035

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1316
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_39
    if-eqz v4, :cond_3b

    .line 1317
    if-eqz v36, :cond_3a

    .line 1318
    const v65, 0x104003f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1320
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3a
    const v65, 0x104003e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1323
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3b
    if-eqz v36, :cond_3c

    .line 1324
    const v65, 0x104003c

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1326
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3c
    const v65, 0x104003b

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_15

    .line 1335
    :cond_3d
    const v65, 0x104004c

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1338
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_3e
    if-eqz v43, :cond_3f

    .line 1339
    const v65, 0x104004d

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1341
    .end local v30           #fullFormat:Ljava/lang/String;
    :cond_3f
    const v65, 0x1040042

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .restart local v30       #fullFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1354
    :cond_40
    move/from16 v0, v58

    move/from16 v1, v26

    if-ne v0, v1, :cond_41

    if-eqz v36, :cond_43

    .line 1358
    :cond_41
    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1359
    .local v47, startDateString:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1360
    .local v15, endDateString:Ljava/lang/String;
    if-eqz v33, :cond_42

    .line 1361
    invoke-static/range {v47 .. v47}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1362
    invoke-static {v15}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1367
    :cond_42
    const/16 v65, 0x6

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v57, v65, v66

    const/16 v66, 0x1

    aput-object v47, v65, v66

    const/16 v66, 0x2

    aput-object v56, v65, v66

    const/16 v66, 0x3

    aput-object v25, v65, v66

    const/16 v66, 0x4

    aput-object v15, v65, v66

    const/16 v66, 0x5

    aput-object v24, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17

    .line 1374
    .end local v15           #endDateString:Ljava/lang/String;
    .end local v47           #startDateString:Ljava/lang/String;
    :cond_43
    if-eqz v39, :cond_49

    .line 1375
    const-string v34, "%m"

    .line 1382
    .local v34, monthFormat:Ljava/lang/String;
    :goto_25
    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1383
    .local v52, startMonthString:Ljava/lang/String;
    const-string v65, "%-d"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1384
    .local v50, startMonthDayString:Ljava/lang/String;
    const-string v65, "%Y"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 1386
    .local v59, startYearString:Ljava/lang/String;
    if-eqz v32, :cond_4b

    const/16 v20, 0x0

    .line 1387
    .local v20, endMonthString:Ljava/lang/String;
    :goto_26
    if-eqz v32, :cond_4c

    const/16 v18, 0x0

    .line 1388
    .local v18, endMonthDayString:Ljava/lang/String;
    :goto_27
    if-eqz v32, :cond_4d

    const/16 v27, 0x0

    .line 1390
    .local v27, endYearString:Ljava/lang/String;
    :goto_28
    move-object/from16 v54, v52

    .line 1391
    .local v54, startStandaloneMonthString:Ljava/lang/String;
    move-object/from16 v22, v20

    .line 1393
    .local v22, endStandaloneMonthString:Ljava/lang/String;
    if-nez v39, :cond_44

    if-nez v4, :cond_44

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v65

    const-string v66, "fa"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_44

    .line 1394
    const-string v65, "%-B"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1395
    const-string v65, "%-B"

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1398
    :cond_44
    move/from16 v0, v51

    move/from16 v1, v19

    if-eq v0, v1, :cond_4e

    .line 1404
    const/16 v31, 0x0

    .line 1405
    .local v31, index:I
    if-eqz v44, :cond_45

    const/16 v31, 0x1

    .line 1406
    :cond_45
    if-eqz v45, :cond_46

    add-int/lit8 v31, v31, 0x2

    .line 1407
    :cond_46
    if-eqz v43, :cond_47

    add-int/lit8 v31, v31, 0x4

    .line 1408
    :cond_47
    if-eqz v39, :cond_48

    add-int/lit8 v31, v31, 0x8

    .line 1409
    :cond_48
    sget-object v65, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v41, v65, v31

    .line 1410
    .local v41, resId:I
    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1414
    const/16 v65, 0xc

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v57, v65, v66

    const/16 v66, 0x1

    aput-object v52, v65, v66

    const/16 v66, 0x2

    aput-object v50, v65, v66

    const/16 v66, 0x3

    aput-object v59, v65, v66

    const/16 v66, 0x4

    aput-object v56, v65, v66

    const/16 v66, 0x5

    aput-object v25, v65, v66

    const/16 v66, 0x6

    aput-object v20, v65, v66

    const/16 v66, 0x7

    aput-object v18, v65, v66

    const/16 v66, 0x8

    aput-object v27, v65, v66

    const/16 v66, 0x9

    aput-object v24, v65, v66

    const/16 v66, 0xa

    aput-object v54, v65, v66

    const/16 v66, 0xb

    aput-object v22, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17

    .line 1376
    .end local v18           #endMonthDayString:Ljava/lang/String;
    .end local v20           #endMonthString:Ljava/lang/String;
    .end local v22           #endStandaloneMonthString:Ljava/lang/String;
    .end local v27           #endYearString:Ljava/lang/String;
    .end local v31           #index:I
    .end local v34           #monthFormat:Ljava/lang/String;
    .end local v41           #resId:I
    .end local v50           #startMonthDayString:Ljava/lang/String;
    .end local v52           #startMonthString:Ljava/lang/String;
    .end local v54           #startStandaloneMonthString:Ljava/lang/String;
    .end local v59           #startYearString:Ljava/lang/String;
    :cond_49
    if-eqz v4, :cond_4a

    .line 1377
    const v65, 0x1040061

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    .restart local v34       #monthFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 1380
    .end local v34           #monthFormat:Ljava/lang/String;
    :cond_4a
    const-string v34, "%B"

    .restart local v34       #monthFormat:Ljava/lang/String;
    goto/16 :goto_25

    .line 1386
    .restart local v50       #startMonthDayString:Ljava/lang/String;
    .restart local v52       #startMonthString:Ljava/lang/String;
    .restart local v59       #startYearString:Ljava/lang/String;
    :cond_4b
    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_26

    .line 1387
    .restart local v20       #endMonthString:Ljava/lang/String;
    :cond_4c
    const-string v65, "%-d"

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_27

    .line 1388
    .restart local v18       #endMonthDayString:Ljava/lang/String;
    :cond_4d
    const-string v65, "%Y"

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_28

    .line 1422
    .restart local v22       #endStandaloneMonthString:Ljava/lang/String;
    .restart local v27       #endYearString:Ljava/lang/String;
    .restart local v54       #startStandaloneMonthString:Ljava/lang/String;
    :cond_4e
    move/from16 v0, v48

    move/from16 v1, v16

    if-eq v0, v1, :cond_53

    .line 1424
    const/16 v31, 0x0

    .line 1425
    .restart local v31       #index:I
    if-eqz v44, :cond_4f

    const/16 v31, 0x1

    .line 1426
    :cond_4f
    if-eqz v45, :cond_50

    add-int/lit8 v31, v31, 0x2

    .line 1427
    :cond_50
    if-eqz v43, :cond_51

    add-int/lit8 v31, v31, 0x4

    .line 1428
    :cond_51
    if-eqz v39, :cond_52

    add-int/lit8 v31, v31, 0x8

    .line 1429
    :cond_52
    sget-object v65, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v41, v65, v31

    .line 1430
    .restart local v41       #resId:I
    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1434
    const/16 v65, 0xc

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v57, v65, v66

    const/16 v66, 0x1

    aput-object v52, v65, v66

    const/16 v66, 0x2

    aput-object v50, v65, v66

    const/16 v66, 0x3

    aput-object v59, v65, v66

    const/16 v66, 0x4

    aput-object v56, v65, v66

    const/16 v66, 0x5

    aput-object v25, v65, v66

    const/16 v66, 0x6

    aput-object v20, v65, v66

    const/16 v66, 0x7

    aput-object v18, v65, v66

    const/16 v66, 0x8

    aput-object v27, v65, v66

    const/16 v66, 0x9

    aput-object v24, v65, v66

    const/16 v66, 0xa

    aput-object v54, v65, v66

    const/16 v66, 0xb

    aput-object v22, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17

    .line 1443
    .end local v31           #index:I
    .end local v41           #resId:I
    :cond_53
    and-int/lit8 v65, p6, 0x10

    if-eqz v65, :cond_58

    const/16 v42, 0x1

    .line 1446
    .local v42, showDate:Z
    :goto_29
    if-nez v43, :cond_54

    if-nez v42, :cond_54

    if-nez v44, :cond_54

    const/16 v42, 0x1

    .line 1449
    :cond_54
    const-string v61, ""

    .line 1450
    .local v61, timeString:Ljava/lang/String;
    if-eqz v43, :cond_55

    .line 1453
    if-eqz v32, :cond_59

    .line 1456
    move-object/from16 v61, v56

    .line 1466
    :cond_55
    :goto_2a
    const-string v30, ""

    .line 1467
    const-string v11, ""

    .line 1468
    .restart local v11       #dateString:Ljava/lang/String;
    if-eqz v42, :cond_5d

    .line 1469
    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1470
    if-eqz v33, :cond_56

    .line 1471
    invoke-static {v11}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1473
    :cond_56
    if-eqz v44, :cond_5b

    .line 1474
    if-eqz v43, :cond_5a

    .line 1476
    const v65, 0x104004e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1504
    :cond_57
    :goto_2b
    const/16 v65, 0x3

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v61, v65, v66

    const/16 v66, 0x1

    aput-object v57, v65, v66

    const/16 v66, 0x2

    aput-object v11, v65, v66

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17

    .line 1443
    .end local v11           #dateString:Ljava/lang/String;
    .end local v42           #showDate:Z
    .end local v61           #timeString:Ljava/lang/String;
    :cond_58
    const/16 v42, 0x0

    goto :goto_29

    .line 1459
    .restart local v42       #showDate:Z
    .restart local v61       #timeString:Ljava/lang/String;
    :cond_59
    const v65, 0x1040041

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 1461
    .local v60, timeFormat:Ljava/lang/String;
    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v65, v0

    const/16 v66, 0x0

    aput-object v56, v65, v66

    const/16 v66, 0x1

    aput-object v24, v65, v66

    move-object/from16 v0, v60

    move-object/from16 v1, v65

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v61

    goto :goto_2a

    .line 1479
    .end local v60           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_5a
    const v65, 0x104004f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2b

    .line 1482
    :cond_5b
    if-eqz v43, :cond_5c

    .line 1484
    const v65, 0x1040039

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2b

    .line 1487
    :cond_5c
    const-string v65, "%s"

    const/16 v66, 0x1

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v11, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17

    .line 1490
    :cond_5d
    if-eqz v44, :cond_5f

    .line 1491
    if-eqz v43, :cond_5e

    .line 1493
    const v65, 0x1040050

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2b

    .line 1496
    :cond_5e
    const-string v65, "%s"

    const/16 v66, 0x1

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v57, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17

    .line 1498
    :cond_5f
    if-eqz v43, :cond_57

    .line 1499
    const-string v65, "%s"

    const/16 v66, 0x1

    move/from16 v0, v66

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v66, v0

    const/16 v67, 0x0

    aput-object v61, v66, v67

    move-object/from16 v0, p1

    move-object/from16 v1, v65

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v65

    goto/16 :goto_17
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1580
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 626
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 628
    const-wide/16 v2, 0x0

    .line 629
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 630
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 632
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 633
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 634
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 636
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 637
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 638
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 640
    :cond_1
    move-wide v6, p1

    .line 643
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 644
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    .line 646
    :goto_0
    return-object v0

    :cond_2
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 6
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 691
    const-string v2, "%1$02d:%2$02d"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-char v1, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 694
    .local v1, zeroDigit:C
    move-object v0, p0

    .line 695
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 700
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-static {v0, p2, p3, v4, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    .line 701
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    invoke-static {v0, p4, p5, v5, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    .line 703
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 705
    .end local v0           #sb:Ljava/lang/StringBuilder;
    .end local v1           #zeroDigit:C
    :goto_1
    return-object v2

    .line 698
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    .restart local v1       #zeroDigit:C
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 705
    .end local v0           #sb:Ljava/lang/StringBuilder;
    .end local v1           #zeroDigit:C
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 6
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v3, 0x3a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 666
    const-string v2, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-char v1, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    .line 669
    .local v1, zeroDigit:C
    move-object v0, p0

    .line 670
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 675
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-static {v0, p2, p3, v4, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    .line 676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    invoke-static {v0, p4, p5, v5, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    .line 678
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    invoke-static {v0, p6, p7, v5, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    .line 680
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 682
    .end local v0           #sb:Ljava/lang/StringBuilder;
    .end local v1           #zeroDigit:C
    :goto_1
    return-object v2

    .line 673
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    .restart local v1       #zeroDigit:C
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 682
    .end local v0           #sb:Ljava/lang/StringBuilder;
    .end local v1           #zeroDigit:C
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 728
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 729
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 730
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 731
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 732
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 736
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 739
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 743
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 741
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .parameter "ampm"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 246
    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 252
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .line 254
    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 247
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 249
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 250
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 288
    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 294
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 296
    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 289
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 291
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 292
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 288
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static declared-synchronized getNumberOfDaysPassed(JJ)J
    .locals 6
    .parameter "date1"
    .parameter "date2"

    .prologue
    .line 469
    const-class v3, Landroid/text/format/DateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 470
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 472
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 473
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 474
    .local v0, day1:I
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 475
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 476
    .local v1, day2:I
    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v4, v2

    monitor-exit v3

    return-wide v4

    .line 469
    .end local v0           #day1:I
    .end local v1           #day2:I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 504
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    .line 506
    .local v15, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 507
    .local v13, now:J
    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 512
    .local v11, duration:J
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    .line 513
    const-wide/32 p5, 0x240c8400

    .line 518
    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 521
    .local v18, timeClause:Ljava/lang/CharSequence;
    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    .line 522
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    .line 523
    .local v16, relativeClause:Ljava/lang/CharSequence;
    const v3, 0x10403ba

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 529
    .end local v16           #relativeClause:Ljava/lang/CharSequence;
    .local v17, result:Ljava/lang/String;
    :goto_1
    return-object v17

    .line 514
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #timeClause:Ljava/lang/CharSequence;
    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 515
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 525
    .restart local v18       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    .line 526
    .local v10, dateClause:Ljava/lang/CharSequence;
    const v3, 0x1040038

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .restart local v17       #result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 14
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 543
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 544
    .local v10, startTime:Landroid/text/format/Time;
    move-wide v0, p1

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 545
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 546
    .local v3, currentTime:Landroid/text/format/Time;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 548
    iget-wide v11, v10, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 549
    .local v9, startDay:I
    iget-wide v11, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 551
    .local v2, currentDay:I
    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 552
    .local v4, days:I
    cmp-long v11, p3, p1

    if-lez v11, :cond_1

    const/4 v7, 0x1

    .line 555
    .local v7, past:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 556
    .local v6, locale:Ljava/util/Locale;
    if-nez v6, :cond_0

    .line 557
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 559
    :cond_0
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    .line 560
    if-eqz v7, :cond_2

    .line 561
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    .line 577
    :goto_1
    return-object v11

    .line 552
    .end local v6           #locale:Ljava/util/Locale;
    .end local v7           #past:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 563
    .restart local v6       #locale:Ljava/util/Locale;
    .restart local v7       #past:Z
    :cond_2
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    goto :goto_1

    .line 565
    :cond_3
    if-nez v4, :cond_4

    .line 566
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    goto :goto_1

    .line 570
    :cond_4
    if-eqz v7, :cond_5

    .line 571
    const v8, 0x1130004

    .line 576
    .local v8, resId:I
    :goto_2
    invoke-virtual {p0, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, format:Ljava/lang/String;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 573
    .end local v5           #format:Ljava/lang/String;
    .end local v8           #resId:I
    :cond_5
    const v8, 0x1130008

    .restart local v8       #resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 357
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 358
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 15
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 383
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 384
    .local v13, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int v0, v0, p6

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    .line 386
    .local v6, abbrevRelative:Z
    :goto_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const/4 v12, 0x1

    .line 387
    .local v12, past:Z
    :goto_1
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 391
    .local v9, duration:J
    const-wide/32 v0, 0xea60

    cmp-long v0, v9, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0xea60

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    .line 392
    const-wide/16 v0, 0x3e8

    div-long v7, v9, v0

    .line 393
    .local v7, count:J
    if-eqz v12, :cond_3

    .line 394
    if-eqz v6, :cond_2

    .line 395
    const v14, 0x1130009

    .line 457
    .local v14, resId:I
    :goto_2
    long-to-int v0, v7

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, format:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v7           #count:J
    .end local v11           #format:Ljava/lang/String;
    .end local v14           #resId:I
    :goto_3
    return-object v0

    .line 384
    .end local v6           #abbrevRelative:Z
    .end local v9           #duration:J
    .end local v12           #past:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 386
    .restart local v6       #abbrevRelative:Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 397
    .restart local v7       #count:J
    .restart local v9       #duration:J
    .restart local v12       #past:Z
    :cond_2
    const/high16 v14, 0x113

    .restart local v14       #resId:I
    goto :goto_2

    .line 400
    .end local v14           #resId:I
    :cond_3
    if-eqz v6, :cond_4

    .line 401
    const v14, 0x113000d

    .restart local v14       #resId:I
    goto :goto_2

    .line 403
    .end local v14           #resId:I
    :cond_4
    const v14, 0x1130005

    .restart local v14       #resId:I
    goto :goto_2

    .line 406
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v9, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p4, v0

    if-gez v0, :cond_9

    .line 407
    const-wide/32 v0, 0xea60

    div-long v7, v9, v0

    .line 408
    .restart local v7       #count:J
    if-eqz v12, :cond_7

    .line 409
    if-eqz v6, :cond_6

    .line 410
    const v14, 0x113000a

    .restart local v14       #resId:I
    goto :goto_2

    .line 412
    .end local v14           #resId:I
    :cond_6
    const v14, 0x1130001

    .restart local v14       #resId:I
    goto :goto_2

    .line 415
    .end local v14           #resId:I
    :cond_7
    if-eqz v6, :cond_8

    .line 416
    const v14, 0x113000e

    .restart local v14       #resId:I
    goto :goto_2

    .line 418
    .end local v14           #resId:I
    :cond_8
    const v14, 0x1130006

    .restart local v14       #resId:I
    goto :goto_2

    .line 421
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_9
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v9, v0

    if-gez v0, :cond_d

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_d

    .line 422
    const-wide/32 v0, 0x36ee80

    div-long v7, v9, v0

    .line 423
    .restart local v7       #count:J
    if-eqz v12, :cond_b

    .line 424
    if-eqz v6, :cond_a

    .line 425
    const v14, 0x113000b

    .restart local v14       #resId:I
    goto :goto_2

    .line 427
    .end local v14           #resId:I
    :cond_a
    const v14, 0x1130002

    .restart local v14       #resId:I
    goto :goto_2

    .line 430
    .end local v14           #resId:I
    :cond_b
    if-eqz v6, :cond_c

    .line 431
    const v14, 0x113000f

    .restart local v14       #resId:I
    goto :goto_2

    .line 433
    .end local v14           #resId:I
    :cond_c
    const v14, 0x1130007

    .restart local v14       #resId:I
    goto :goto_2

    .line 436
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_d
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v9, v0

    if-gez v0, :cond_11

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p4, v0

    if-gez v0, :cond_11

    .line 437
    invoke-static/range {p0 .. p3}, Landroid/text/format/DateUtils;->getNumberOfDaysPassed(JJ)J

    move-result-wide v7

    .line 438
    .restart local v7       #count:J
    if-eqz v12, :cond_f

    .line 439
    if-eqz v6, :cond_e

    .line 440
    const v14, 0x113000c

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 442
    .end local v14           #resId:I
    :cond_e
    const v14, 0x1130004

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 445
    .end local v14           #resId:I
    :cond_f
    if-eqz v6, :cond_10

    .line 446
    const v14, 0x1130010

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 448
    .end local v14           #resId:I
    :cond_10
    const v14, 0x1130008

    .restart local v14       #resId:I
    goto/16 :goto_2

    .line 454
    .end local v7           #count:J
    .end local v14           #resId:I
    :cond_11
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1651
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1601
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1602
    .local v8, now:J
    sub-long v2, v8, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 1604
    .local v13, span:J
    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    .line 1605
    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    .line 1606
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1609
    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    .line 1610
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1613
    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1614
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1617
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    .line 1619
    const/4 v7, 0x1

    .local v7, flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1620
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1621
    .local v12, result:Ljava/lang/String;
    const v10, 0x10403ac

    .line 1635
    .local v10, prepositionId:I
    :goto_0
    if-eqz p3, :cond_2

    .line 1636
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1637
    .local v11, res:Landroid/content/res/Resources;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1639
    .end local v11           #res:Landroid/content/res/Resources;
    :cond_2
    monitor-exit v15

    .line 1640
    return-object v12

    .line 1622
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    .line 1624
    const v7, 0x20014

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1625
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1628
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x10403ab

    .line 1629
    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1631
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    const v7, 0x10010

    .restart local v7       #flags:I
    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    .line 1632
    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 1633
    .restart local v12       #result:Ljava/lang/String;
    const v10, 0x10403ab

    .restart local v10       #prepositionId:I
    goto :goto_0

    .line 1639
    .end local v7           #flags:I
    .end local v10           #prepositionId:I
    .end local v12           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 322
    .local v0, d:Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    .line 329
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .line 331
    .local v1, names:[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    return-object v2

    .line 323
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 324
    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 327
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v1           #names:[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    .restart local v1       #names:[Ljava/lang/String;
    goto :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 2

    .prologue
    .line 581
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 582
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 583
    monitor-exit v1

    .line 584
    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    .prologue
    .line 587
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 588
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 589
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 590
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 591
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 592
    const v2, 0x10403bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 593
    const v2, 0x10403c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 595
    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 762
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 763
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 765
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 766
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 767
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 769
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 770
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v0, 0x1

    .line 782
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 789
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 789
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 752
    if-eqz p0, :cond_0

    .line 753
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 755
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 3
    .parameter "millis"

    .prologue
    .line 603
    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 604
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 605
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 803
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 804
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 805
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 806
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 846
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 847
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 848
    div-int/lit8 v0, v0, 0xa

    .line 849
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 850
    div-int/lit8 v0, v0, 0xa

    .line 851
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 852
    div-int/lit8 v0, v0, 0xa

    .line 853
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 855
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 856
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 857
    div-int/lit8 v0, v0, 0xa

    .line 858
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 860
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 861
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 862
    div-int/lit8 v0, v0, 0xa

    .line 863
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 865
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 867
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 868
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 869
    div-int/lit8 v0, v0, 0xa

    .line 870
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 872
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 873
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 874
    div-int/lit8 v0, v0, 0xa

    .line 875
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 877
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 878
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 879
    div-int/lit8 v0, v0, 0xa

    .line 880
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 882
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 823
    if-eqz p1, :cond_0

    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 825
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 829
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 827
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
