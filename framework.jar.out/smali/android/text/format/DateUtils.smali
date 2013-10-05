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

    const/16 v1, 0x10

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x20

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v2, v7, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eq v2, v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x7f5

    if-ge v5, v7, :cond_1

    add-int/lit16 v5, v5, 0x21f

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v1, v3, v7, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    add-int/lit8 v7, v0, 0x1

    const/16 v8, 0x30

    if-le v7, v8, :cond_5

    add-int/lit8 v7, v0, -0x1

    const/16 v8, 0x39

    if-ge v7, v8, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_1
.end method

.method private static append(Ljava/lang/StringBuilder;JZC)V
    .locals 6

    const-wide/16 v4, 0xa

    cmp-long v0, p1, v4

    if-gez v0, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    int-to-long v0, p4

    rem-long v2, p1, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

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

    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8

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

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v40

    and-int/lit8 v65, p6, 0x1

    if-eqz v65, :cond_6

    const/16 v43, 0x1

    :goto_0
    and-int/lit8 v65, p6, 0x2

    if-eqz v65, :cond_7

    const/16 v44, 0x1

    :goto_1
    and-int/lit8 v65, p6, 0x4

    if-eqz v65, :cond_8

    const/16 v45, 0x1

    :goto_2
    and-int/lit8 v65, p6, 0x8

    if-eqz v65, :cond_9

    const/16 v38, 0x1

    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v65, v0

    if-eqz v65, :cond_a

    const/16 v63, 0x1

    :goto_4
    const v65, 0x88000

    and-int v65, v65, p6

    if-eqz v65, :cond_b

    const/4 v6, 0x1

    :goto_5
    const/high16 v65, 0x9

    and-int v65, v65, p6

    if-eqz v65, :cond_c

    const/4 v4, 0x1

    :goto_6
    and-int/lit8 v65, p6, 0x20

    if-eqz v65, :cond_d

    const/16 v36, 0x1

    :goto_7
    const/high16 v65, 0x2

    and-int v65, v65, p6

    if-eqz v65, :cond_e

    const/16 v39, 0x1

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

    :goto_9
    cmp-long v65, p2, p4

    if-nez v65, :cond_10

    const/16 v32, 0x1

    :goto_a
    if-eqz p7, :cond_11

    new-instance v46, Landroid/text/format/Time;

    move-object/from16 v0, v46

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_b
    move-object/from16 v0, v46

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    if-eqz v32, :cond_13

    move-object/from16 v14, v46

    const/4 v12, 0x0

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

    :cond_0
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v65, v0

    add-int/lit8 v65, v65, -0x1

    move/from16 v0, v65

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    const/16 v65, 0x1

    move/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    :cond_1
    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v48, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v51, v0

    move-object/from16 v0, v46

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v58, v0

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    const-string v57, ""

    const-string v25, ""

    if-eqz v44, :cond_2

    const-string v64, ""

    if-eqz v6, :cond_16

    const-string v64, "%a"

    :goto_d
    move-object/from16 v0, v46

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    if-eqz v32, :cond_17

    move-object/from16 v25, v57

    :cond_2
    :goto_e
    const-string v56, ""

    const-string v24, ""

    if-eqz v43, :cond_4

    const-string v55, ""

    const-string v23, ""

    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v65, v0

    if-eqz v65, :cond_18

    const/16 v29, 0x1

    :goto_f
    and-int/lit8 v65, p6, 0x40

    if-eqz v65, :cond_19

    const/16 v28, 0x1

    :goto_10
    if-eqz v29, :cond_1a

    const/16 v62, 0x1

    :goto_11
    if-eqz v62, :cond_1c

    const v65, 0x104002d

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v55, v23

    :cond_3
    :goto_12
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    if-eqz v32, :cond_30

    move-object/from16 v24, v56

    :cond_4
    :goto_13
    if-eqz v45, :cond_31

    :goto_14
    if-eqz v39, :cond_35

    const v65, 0x1040032

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_15
    if-eqz v44, :cond_3e

    if-eqz v43, :cond_3d

    const v65, 0x104004b

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    :goto_16
    if-eqz v36, :cond_40

    move/from16 v0, v51

    move/from16 v1, v19

    if-ne v0, v1, :cond_40

    move/from16 v0, v58

    move/from16 v1, v26

    if-ne v0, v1, :cond_40

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v33, :cond_5

    invoke-static {v11}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

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

    :goto_17
    return-object v65

    :cond_6
    const/16 v43, 0x0

    goto/16 :goto_0

    :cond_7
    const/16 v44, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v45, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v38, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v63, 0x0

    goto/16 :goto_4

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_d
    const/16 v36, 0x0

    goto/16 :goto_7

    :cond_e
    const/16 v39, 0x0

    goto/16 :goto_8

    :cond_f
    const/16 v33, 0x0

    goto/16 :goto_9

    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_a

    :cond_11
    if-eqz v63, :cond_12

    new-instance v46, Landroid/text/format/Time;

    const-string v65, "UTC"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_12
    new-instance v46, Landroid/text/format/Time;

    invoke-direct/range {v46 .. v46}, Landroid/text/format/Time;-><init>()V

    goto/16 :goto_b

    :cond_13
    if-eqz p7, :cond_14

    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_18
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    move-object/from16 v0, v46

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v65, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v65

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v49

    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v65, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v65

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    sub-int v12, v17, v49

    goto/16 :goto_c

    :cond_14
    if-eqz v63, :cond_15

    new-instance v14, Landroid/text/format/Time;

    const-string v65, "UTC"

    move-object/from16 v0, v65

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_18

    :cond_15
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    goto :goto_18

    :cond_16
    const-string v64, "%A"

    goto/16 :goto_d

    :cond_17
    move-object/from16 v0, v64

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_e

    :cond_18
    const/16 v29, 0x0

    goto/16 :goto_f

    :cond_19
    const/16 v28, 0x0

    goto/16 :goto_10

    :cond_1a
    if-eqz v28, :cond_1b

    const/16 v62, 0x0

    goto/16 :goto_11

    :cond_1b
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v62

    goto/16 :goto_11

    :cond_1c
    const v65, 0x84000

    and-int v65, v65, p6

    if-eqz v65, :cond_1e

    const/4 v5, 0x1

    :goto_19
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v65, v0

    if-eqz v65, :cond_1f

    const/4 v7, 0x1

    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v65, v0

    if-eqz v65, :cond_20

    const/16 v37, 0x1

    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v65, v0

    if-eqz v65, :cond_21

    const/4 v9, 0x1

    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v65, v0

    if-eqz v65, :cond_22

    const/16 v35, 0x1

    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v65, v0

    if-eqz v65, :cond_23

    const/4 v8, 0x1

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

    :goto_1f
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v65, v0

    if-nez v65, :cond_25

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v65, v0

    if-nez v65, :cond_25

    const/16 v21, 0x1

    :goto_20
    if-eqz v5, :cond_27

    if-eqz v53, :cond_27

    if-eqz v7, :cond_26

    const v65, 0x104033a

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    :goto_21
    if-nez v32, :cond_1d

    if-eqz v5, :cond_2a

    if-eqz v21, :cond_2a

    if-eqz v7, :cond_29

    const v65, 0x104033a

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_22
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v65, v0

    const/16 v66, 0xc

    move/from16 v0, v65

    move/from16 v1, v66

    if-ne v0, v1, :cond_2d

    if-eqz v21, :cond_2d

    if-nez v37, :cond_2d

    if-eqz v9, :cond_2c

    const v65, 0x10403bc

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

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

    if-eqz v9, :cond_2f

    const v65, 0x10403bc

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_12

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_19

    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_1a

    :cond_20
    const/16 v37, 0x0

    goto/16 :goto_1b

    :cond_21
    const/4 v9, 0x0

    goto/16 :goto_1c

    :cond_22
    const/16 v35, 0x0

    goto/16 :goto_1d

    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_1e

    :cond_24
    const/16 v53, 0x0

    goto/16 :goto_1f

    :cond_25
    const/16 v21, 0x0

    goto :goto_20

    :cond_26
    const v65, 0x1040339

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto :goto_21

    :cond_27
    if-eqz v7, :cond_28

    const v65, 0x104002f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_21

    :cond_28
    const v65, 0x104002e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_21

    :cond_29
    const v65, 0x1040339

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    :cond_2a
    if-eqz v7, :cond_2b

    const v65, 0x104002f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    :cond_2b
    const v65, 0x104002e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_22

    :cond_2c
    const v65, 0x10403bb

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    :cond_2d
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v65, v0

    if-nez v65, :cond_1d

    if-eqz v21, :cond_1d

    if-nez v35, :cond_1d

    if-eqz v8, :cond_2e

    const v65, 0x10403be

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    :cond_2e
    const v65, 0x10403bd

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_23

    :cond_2f
    const v65, 0x10403bb

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v55

    goto/16 :goto_12

    :cond_30
    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_13

    :cond_31
    if-eqz v38, :cond_32

    const/16 v45, 0x0

    goto/16 :goto_14

    :cond_32
    move/from16 v0, v58

    move/from16 v1, v26

    if-eq v0, v1, :cond_33

    const/16 v45, 0x1

    goto/16 :goto_14

    :cond_33
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

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

    :cond_35
    if-eqz v45, :cond_39

    if-eqz v4, :cond_37

    if-eqz v36, :cond_36

    const v65, 0x1040040

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_36
    const v65, 0x104003a

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_37
    if-eqz v36, :cond_38

    const v65, 0x104003d

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_38
    const v65, 0x1040035

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_39
    if-eqz v4, :cond_3b

    if-eqz v36, :cond_3a

    const v65, 0x104003f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_3a
    const v65, 0x104003e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_3b
    if-eqz v36, :cond_3c

    const v65, 0x104003c

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_3c
    const v65, 0x104003b

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_15

    :cond_3d
    const v65, 0x104004c

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_16

    :cond_3e
    if-eqz v43, :cond_3f

    const v65, 0x104004d

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_16

    :cond_3f
    const v65, 0x1040042

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_16

    :cond_40
    move/from16 v0, v58

    move/from16 v1, v26

    if-ne v0, v1, :cond_41

    if-eqz v36, :cond_43

    :cond_41
    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual {v14, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v33, :cond_42

    invoke-static/range {v47 .. v47}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    invoke-static {v15}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

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

    :cond_43
    if-eqz v39, :cond_49

    const-string v34, "%m"

    :goto_25
    move-object/from16 v0, v46

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    const-string v65, "%-d"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    const-string v65, "%Y"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    if-eqz v32, :cond_4b

    const/16 v20, 0x0

    :goto_26
    if-eqz v32, :cond_4c

    const/16 v18, 0x0

    :goto_27
    if-eqz v32, :cond_4d

    const/16 v27, 0x0

    :goto_28
    move-object/from16 v54, v52

    move-object/from16 v22, v20

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

    const-string v65, "%-B"

    move-object/from16 v0, v46

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v65, "%-B"

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    :cond_44
    move/from16 v0, v51

    move/from16 v1, v19

    if-eq v0, v1, :cond_4e

    const/16 v31, 0x0

    if-eqz v44, :cond_45

    const/16 v31, 0x1

    :cond_45
    if-eqz v45, :cond_46

    add-int/lit8 v31, v31, 0x2

    :cond_46
    if-eqz v43, :cond_47

    add-int/lit8 v31, v31, 0x4

    :cond_47
    if-eqz v39, :cond_48

    add-int/lit8 v31, v31, 0x8

    :cond_48
    sget-object v65, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v41, v65, v31

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

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

    :cond_49
    if-eqz v4, :cond_4a

    const v65, 0x1040061

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_25

    :cond_4a
    const-string v34, "%B"

    goto/16 :goto_25

    :cond_4b
    move-object/from16 v0, v34

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_26

    :cond_4c
    const-string v65, "%-d"

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_27

    :cond_4d
    const-string v65, "%Y"

    move-object/from16 v0, v65

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_28

    :cond_4e
    move/from16 v0, v48

    move/from16 v1, v16

    if-eq v0, v1, :cond_53

    const/16 v31, 0x0

    if-eqz v44, :cond_4f

    const/16 v31, 0x1

    :cond_4f
    if-eqz v45, :cond_50

    add-int/lit8 v31, v31, 0x2

    :cond_50
    if-eqz v43, :cond_51

    add-int/lit8 v31, v31, 0x4

    :cond_51
    if-eqz v39, :cond_52

    add-int/lit8 v31, v31, 0x8

    :cond_52
    sget-object v65, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v41, v65, v31

    invoke-virtual/range {v40 .. v41}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

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

    :cond_53
    and-int/lit8 v65, p6, 0x10

    if-eqz v65, :cond_58

    const/16 v42, 0x1

    :goto_29
    if-nez v43, :cond_54

    if-nez v42, :cond_54

    if-nez v44, :cond_54

    const/16 v42, 0x1

    :cond_54
    const-string v61, ""

    if-eqz v43, :cond_55

    if-eqz v32, :cond_59

    move-object/from16 v61, v56

    :cond_55
    :goto_2a
    const-string v30, ""

    const-string v11, ""

    if-eqz v42, :cond_5d

    move-object/from16 v0, v46

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v33, :cond_56

    invoke-static {v11}, Landroid/text/format/DateUtils;->addExtralYearsInThaiIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_56
    if-eqz v44, :cond_5b

    if-eqz v43, :cond_5a

    const v65, 0x104004e

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

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

    :cond_58
    const/16 v42, 0x0

    goto :goto_29

    :cond_59
    const v65, 0x1040041

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v60

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

    :cond_5a
    const v65, 0x104004f

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2b

    :cond_5b
    if-eqz v43, :cond_5c

    const v65, 0x1040039

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_2b

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

    :cond_5d
    if-eqz v44, :cond_5f

    if-eqz v43, :cond_5e

    const v65, 0x1040050

    move-object/from16 v0, v40

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2b

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

    :cond_5f
    if-eqz v43, :cond_57

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

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14

    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    :cond_1
    move-wide v6, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

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

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "%1$02d:%2$02d"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-char v1, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    move-object v0, p0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-static {v0, p2, p3, v4, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p4, p5, v5, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

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

    const/16 v3, 0x3a

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    iget-char v1, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    move-object v0, p0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-static {v0, p2, p3, v4, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p4, p5, v5, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0, p6, p7, v5, v1}, Landroid/text/format/DateUtils;->append(Ljava/lang/StringBuilder;JZC)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

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

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

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

    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    :goto_0
    aget-object v2, v1, p0

    return-object v2

    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    goto :goto_0

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    :goto_0
    aget-object v2, v1, p0

    return-object v2

    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_0

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

    const-class v3, Landroid/text/format/DateUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p0, p1}, Landroid/text/format/Time;->set(J)V

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    sub-int v2, v1, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    int-to-long v4, v2

    monitor-exit v3

    return-wide v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 19

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v3, v13, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v3, 0x240c8400

    cmp-long v3, p5, v3

    if-lez v3, :cond_1

    const-wide/32 p5, 0x240c8400

    :cond_0
    :goto_0
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    cmp-long v3, v11, p5

    if-gez v3, :cond_2

    move-wide/from16 v3, p1

    move-wide v5, v13

    move-wide/from16 v7, p3

    move/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v16

    const v3, 0x10403ba

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :goto_1
    return-object v17

    :cond_1
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    const-wide/32 p5, 0x5265c00

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    const v3, 0x1040038

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    invoke-virtual {v15, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 14

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    move-wide v0, p1

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v11, v10, Landroid/text/format/Time;->gmtoff:J

    move-wide v0, p1

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    iget-wide v11, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p3

    invoke-static {v0, v1, v11, v12}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int v11, v2, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v4

    cmp-long v11, p3, p1

    if-lez v11, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v6, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v6, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    :cond_0
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    if-eqz v7, :cond_2

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->yesterday:Ljava/lang/String;

    :goto_1
    return-object v11

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->tomorrow:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    invoke-static {v6}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v11

    iget-object v11, v11, Llibcore/icu/LocaleData;->today:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz v7, :cond_5

    const v8, 0x1130004

    :goto_2
    invoke-virtual {p0, v8, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_5
    const v8, 0x1130008

    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6

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

    const v6, 0x10014

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 15

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v0, 0xc

    and-int v0, v0, p6

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const/4 v12, 0x1

    :goto_1
    sub-long v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v0, 0xea60

    cmp-long v0, v9, v0

    if-gez v0, :cond_5

    const-wide/32 v0, 0xea60

    cmp-long v0, p4, v0

    if-gez v0, :cond_5

    const-wide/16 v0, 0x3e8

    div-long v7, v9, v0

    if-eqz v12, :cond_3

    if-eqz v6, :cond_2

    const v14, 0x1130009

    :goto_2
    long-to-int v0, v7

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v11

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    const/high16 v14, 0x113

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    const v14, 0x113000d

    goto :goto_2

    :cond_4
    const v14, 0x1130005

    goto :goto_2

    :cond_5
    const-wide/32 v0, 0x36ee80

    cmp-long v0, v9, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0x36ee80

    cmp-long v0, p4, v0

    if-gez v0, :cond_9

    const-wide/32 v0, 0xea60

    div-long v7, v9, v0

    if-eqz v12, :cond_7

    if-eqz v6, :cond_6

    const v14, 0x113000a

    goto :goto_2

    :cond_6
    const v14, 0x1130001

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    const v14, 0x113000e

    goto :goto_2

    :cond_8
    const v14, 0x1130006

    goto :goto_2

    :cond_9
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v9, v0

    if-gez v0, :cond_d

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p4, v0

    if-gez v0, :cond_d

    const-wide/32 v0, 0x36ee80

    div-long v7, v9, v0

    if-eqz v12, :cond_b

    if-eqz v6, :cond_a

    const v14, 0x113000b

    goto :goto_2

    :cond_a
    const v14, 0x1130002

    goto :goto_2

    :cond_b
    if-eqz v6, :cond_c

    const v14, 0x113000f

    goto :goto_2

    :cond_c
    const v14, 0x1130007

    goto :goto_2

    :cond_d
    const-wide/32 v0, 0x240c8400

    cmp-long v0, v9, v0

    if-gez v0, :cond_11

    const-wide/32 v0, 0x240c8400

    cmp-long v0, p4, v0

    if-gez v0, :cond_11

    invoke-static/range {p0 .. p3}, Landroid/text/format/DateUtils;->getNumberOfDaysPassed(JJ)J

    move-result-wide v7

    if-eqz v12, :cond_f

    if-eqz v6, :cond_e

    const v14, 0x113000c

    goto/16 :goto_2

    :cond_e
    const v14, 0x1130004

    goto/16 :goto_2

    :cond_f
    if-eqz v6, :cond_10

    const v14, 0x1130010

    goto/16 :goto_2

    :cond_10
    const v14, 0x1130008

    goto/16 :goto_2

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

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-class v15, Landroid/text/format/DateUtils;

    monitor-enter v15

    :try_start_0
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    :cond_0
    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v2, :cond_1

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    sput-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    :cond_1
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v2, v8, v9}, Landroid/text/format/Time;->set(J)V

    sget-object v2, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v13, v2

    if-gez v2, :cond_3

    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->weekDay:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v3, :cond_3

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    const v10, 0x10403ac

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-virtual {v11, v10, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :cond_2
    monitor-exit v15

    return-object v12

    :cond_3
    sget-object v2, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->year:I

    if-eq v2, v3, :cond_4

    const v7, 0x20014

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    const v10, 0x10403ab

    goto :goto_0

    :cond_4
    const v7, 0x10010

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    const v10, 0x10403ab

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    :goto_0
    aget-object v2, v1, p0

    return-object v2

    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_0

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

    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    const v2, 0x10403bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const v2, 0x10403c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    iget v2, v3, Landroid/text/format/Time;->year:I

    iget v0, v3, Landroid/text/format/Time;->month:I

    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

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

    const/16 v3, 0x5a

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 3

    sget-object v1, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    div-int/lit8 v0, v0, 0xa

    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3

    const/16 v1, 0x10

    const/16 v2, 0xf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
