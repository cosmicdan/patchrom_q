#--RESOURCEREMAPPER
.class public Landroid/webkit/L10nUtils;
.super Ljava/lang/Object;
.source "L10nUtils.java"


# static fields
.field private static mApplicationContext:Landroid/content/Context;

.field private static mIdsArray:[I

.field private static mStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/webkit/L10nUtils;->mIdsArray:[I

    return-void

    :array_0
    .array-data 0x4
        0x4ct 0x3t 0x4t 0x1t		#[0x48t 0x3t 0x4t 0x1t]string:autofill_address_name_separator
        0x4dt 0x3t 0x4t 0x1t		#[0x49t 0x3t 0x4t 0x1t]string:autofill_address_summary_name_format
        0x4et 0x3t 0x4t 0x1t		#[0x4at 0x3t 0x4t 0x1t]string:autofill_address_summary_separator
        0x4ft 0x3t 0x4t 0x1t		#[0x4bt 0x3t 0x4t 0x1t]string:autofill_address_summary_format
        0x50t 0x3t 0x4t 0x1t		#[0x4ct 0x3t 0x4t 0x1t]string:autofill_attention_ignored_re
        0x51t 0x3t 0x4t 0x1t		#[0x4dt 0x3t 0x4t 0x1t]string:autofill_region_ignored_re
        0x52t 0x3t 0x4t 0x1t		#[0x4et 0x3t 0x4t 0x1t]string:autofill_company_re
        0x53t 0x3t 0x4t 0x1t		#[0x4ft 0x3t 0x4t 0x1t]string:autofill_address_line_1_re
        0x54t 0x3t 0x4t 0x1t		#[0x50t 0x3t 0x4t 0x1t]string:autofill_address_line_1_label_re
        0x55t 0x3t 0x4t 0x1t		#[0x51t 0x3t 0x4t 0x1t]string:autofill_address_line_2_re
        0x56t 0x3t 0x4t 0x1t		#[0x52t 0x3t 0x4t 0x1t]string:autofill_address_line_3_re
        0x57t 0x3t 0x4t 0x1t		#[0x53t 0x3t 0x4t 0x1t]string:autofill_country_re
        0x58t 0x3t 0x4t 0x1t		#[0x54t 0x3t 0x4t 0x1t]string:autofill_zip_code_re
        0x59t 0x3t 0x4t 0x1t		#[0x55t 0x3t 0x4t 0x1t]string:autofill_zip_4_re
        0x5at 0x3t 0x4t 0x1t		#[0x56t 0x3t 0x4t 0x1t]string:autofill_city_re
        0x5bt 0x3t 0x4t 0x1t		#[0x57t 0x3t 0x4t 0x1t]string:autofill_state_re
        0x5ct 0x3t 0x4t 0x1t		#[0x58t 0x3t 0x4t 0x1t]string:autofill_address_type_same_as_re
        0x5dt 0x3t 0x4t 0x1t		#[0x59t 0x3t 0x4t 0x1t]string:autofill_address_type_use_my_re
        0x5et 0x3t 0x4t 0x1t		#[0x5at 0x3t 0x4t 0x1t]string:autofill_billing_designator_re
        0x5ft 0x3t 0x4t 0x1t		#[0x5bt 0x3t 0x4t 0x1t]string:autofill_shipping_designator_re
        0x60t 0x3t 0x4t 0x1t		#[0x5ct 0x3t 0x4t 0x1t]string:autofill_email_re
        0x61t 0x3t 0x4t 0x1t		#[0x5dt 0x3t 0x4t 0x1t]string:autofill_username_re
        0x62t 0x3t 0x4t 0x1t		#[0x5et 0x3t 0x4t 0x1t]string:autofill_name_re
        0x63t 0x3t 0x4t 0x1t		#[0x5ft 0x3t 0x4t 0x1t]string:autofill_name_specific_re
        0x64t 0x3t 0x4t 0x1t		#[0x60t 0x3t 0x4t 0x1t]string:autofill_first_name_re
        0x65t 0x3t 0x4t 0x1t		#[0x61t 0x3t 0x4t 0x1t]string:autofill_middle_initial_re
        0x66t 0x3t 0x4t 0x1t		#[0x62t 0x3t 0x4t 0x1t]string:autofill_middle_name_re
        0x67t 0x3t 0x4t 0x1t		#[0x63t 0x3t 0x4t 0x1t]string:autofill_last_name_re
        0x68t 0x3t 0x4t 0x1t		#[0x64t 0x3t 0x4t 0x1t]string:autofill_phone_re
        0x69t 0x3t 0x4t 0x1t		#[0x65t 0x3t 0x4t 0x1t]string:autofill_area_code_re
        0x6at 0x3t 0x4t 0x1t		#[0x66t 0x3t 0x4t 0x1t]string:autofill_phone_prefix_re
        0x6bt 0x3t 0x4t 0x1t		#[0x67t 0x3t 0x4t 0x1t]string:autofill_phone_suffix_re
        0x6ct 0x3t 0x4t 0x1t		#[0x68t 0x3t 0x4t 0x1t]string:autofill_phone_extension_re
        0x6dt 0x3t 0x4t 0x1t		#[0x69t 0x3t 0x4t 0x1t]string:autofill_name_on_card_re
        0x6et 0x3t 0x4t 0x1t		#[0x6at 0x3t 0x4t 0x1t]string:autofill_name_on_card_contextual_re
        0x6ft 0x3t 0x4t 0x1t		#[0x6bt 0x3t 0x4t 0x1t]string:autofill_card_cvc_re
        0x70t 0x3t 0x4t 0x1t		#[0x6ct 0x3t 0x4t 0x1t]string:autofill_card_number_re
        0x71t 0x3t 0x4t 0x1t		#[0x6dt 0x3t 0x4t 0x1t]string:autofill_expiration_month_re
        0x72t 0x3t 0x4t 0x1t		#[0x6et 0x3t 0x4t 0x1t]string:autofill_expiration_date_re
        0x73t 0x3t 0x4t 0x1t		#[0x6ft 0x3t 0x4t 0x1t]string:autofill_card_ignored_re
        0x74t 0x3t 0x4t 0x1t		#[0x70t 0x3t 0x4t 0x1t]string:autofill_fax_re
        0x75t 0x3t 0x4t 0x1t		#[0x71t 0x3t 0x4t 0x1t]string:autofill_country_code_re
        0x76t 0x3t 0x4t 0x1t		#[0x72t 0x3t 0x4t 0x1t]string:autofill_area_code_notext_re
        0x77t 0x3t 0x4t 0x1t		#[0x73t 0x3t 0x4t 0x1t]string:autofill_phone_prefix_separator_re
        0x78t 0x3t 0x4t 0x1t		#[0x74t 0x3t 0x4t 0x1t]string:autofill_phone_suffix_separator_re
        0x79t 0x3t 0x4t 0x1t		#[0x75t 0x3t 0x4t 0x1t]string:autofill_province
        0x7at 0x3t 0x4t 0x1t		#[0x76t 0x3t 0x4t 0x1t]string:autofill_postal_code
        0x7bt 0x3t 0x4t 0x1t		#[0x77t 0x3t 0x4t 0x1t]string:autofill_state
        0x7ct 0x3t 0x4t 0x1t		#[0x78t 0x3t 0x4t 0x1t]string:autofill_zip_code
        0x7dt 0x3t 0x4t 0x1t		#[0x79t 0x3t 0x4t 0x1t]string:autofill_county
        0x7et 0x3t 0x4t 0x1t		#[0x7at 0x3t 0x4t 0x1t]string:autofill_island
        0x7ft 0x3t 0x4t 0x1t		#[0x7bt 0x3t 0x4t 0x1t]string:autofill_district
        0x80t 0x3t 0x4t 0x1t		#[0x7ct 0x3t 0x4t 0x1t]string:autofill_department
        0x81t 0x3t 0x4t 0x1t		#[0x7dt 0x3t 0x4t 0x1t]string:autofill_prefecture
        0x82t 0x3t 0x4t 0x1t		#[0x7et 0x3t 0x4t 0x1t]string:autofill_parish
        0x83t 0x3t 0x4t 0x1t		#[0x7ft 0x3t 0x4t 0x1t]string:autofill_area
        0x84t 0x3t 0x4t 0x1t		#[0x80t 0x3t 0x4t 0x1t]string:autofill_emirate
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalisedString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 110
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 113
    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_0
    return-object v2

    .line 116
    :cond_0
    sget-object v2, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 117
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 118
    .local v0, needToLoad:Z
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/webkit/L10nUtils;->loadString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    .end local v0           #needToLoad:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 118
    .restart local v0       #needToLoad:Z
    :cond_3
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method private static loadString(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 100
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    .line 104
    :cond_0
    sget-object v1, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroid/webkit/L10nUtils;->mIdsArray:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, localisedString:Ljava/lang/String;
    sget-object v1, Landroid/webkit/L10nUtils;->mStrings:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 1
    .parameter "applicationContext"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkit/L10nUtils;->mApplicationContext:Landroid/content/Context;

    .line 97
    return-void
.end method
