.class public Lcom/android/settings/location/DimmableIZatIconPreference;
.super Ljava/lang/Object;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;,
        Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
    }
.end annotation


# static fields
.field private static mGetConsentMethod:Ljava/lang/reflect/Method;

.field private static mGetXtProxyMethod:Ljava/lang/reflect/Method;

.field private static mIzatPackage:Ljava/lang/String;

.field private static mLoader:Ldalvik/system/DexClassLoader;

.field private static mNotifierClz:Ljava/lang/Class;


# direct methods
.method static synthetic access$000()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mNotifierClz:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->dimIcon(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/reflect/Method;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetXtProxyMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/reflect/Method;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/settings/location/DimmableIZatIconPreference;->mGetConsentMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static dimIcon(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 125
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method static getAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settingslib/widget/apppreference/AppPreference;
    .locals 1

    .line 217
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isIzatPackage(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 218
    new-instance p1, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object p1
.end method

.method static getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;
    .locals 2

    .line 223
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->isIzatPackage(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatRestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static isIzatPackage(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Z
    .locals 0

    .line 115
    sget-object p0, Lcom/android/settings/location/DimmableIZatIconPreference;->mIzatPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
