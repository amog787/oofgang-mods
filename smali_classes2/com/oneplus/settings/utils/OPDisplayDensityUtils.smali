.class public Lcom/oneplus/settings/utils/OPDisplayDensityUtils;
.super Ljava/lang/Object;
.source "OPDisplayDensityUtils.java"


# static fields
.field private static mValues:[I


# instance fields
.field private mCurrentIndex:I

.field private mDefaultDensity:I

.field private mEntries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    const-string v0, "ro.display.series"

    const-string v1, ""

    .line 24
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1a4
        0x1c2
        0x1e0
        0x1fe
        0x21c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ro.sf.lcd_density"

    const-string v1, "480"

    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v0, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    .line 30
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->useDefault560Dpi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_screen_dpi_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_screen_1080_new_dpi_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->screen_zoom_summary_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->screen_zoom_summary_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->screen_zoom_summary_large:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->screen_zoom_summary_very_large:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->screen_zoom_summary_extremely_large:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x2

    const-string v1, "display_density_forced"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iput v3, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    goto :goto_2

    :cond_1
    move v0, v2

    .line 57
    :goto_1
    sget-object v1, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 58
    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iput v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    :cond_3
    :goto_2
    iget p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    sget-object v0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    array-length v1, v0

    sub-int/2addr v1, v3

    if-lt p1, v1, :cond_4

    .line 64
    array-length p1, v0

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    .line 66
    :cond_4
    iget p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    if-gtz p1, :cond_5

    .line 67
    iput v2, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_5
    return-void
.end method

.method public static get1080Dpi(Landroid/content/Context;)[I
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->oneplus_screen_1080_new_dpi_values:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static useDefault560Dpi(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "ro.sf.lcd_density"

    const-string v1, "480"

    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMultiScreenResolution(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    return p0
.end method

.method public getDefaultDensity(Landroid/content/Context;)I
    .locals 3

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->oneplus_screen_1080_new_dpi_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    aget p1, p1, v1

    iput p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->oneplus_screen_dpi_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    aget p1, p1, v1

    iput p1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    .line 139
    :goto_0
    iget p0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    return p0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object p0
.end method

.method public getValues()[I
    .locals 0

    .line 126
    sget-object p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    return-object p0
.end method
