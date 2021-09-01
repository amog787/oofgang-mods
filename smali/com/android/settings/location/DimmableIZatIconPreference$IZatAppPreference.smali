.class Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "DimmableIZatIconPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/DimmableIZatIconPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IZatAppPreference"
.end annotation


# instance fields
.field private mChecked:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 133
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 134
    iput-object p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$000()Ldalvik/system/DexClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 136
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$100()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference$1;-><init>(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)V

    .line 135
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    :try_start_0
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$400()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    aput-object v0, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$500()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/location/DimmableIZatIconPreference$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 164
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    sget v0, Lcom/android/settings/R$string;->notification_toggle_on:I

    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    sget v0, Lcom/android/settings/R$string;->notification_toggle_off:I

    .line 169
    :goto_1
    iget-object p0, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 174
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 175
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/location/DimmableIZatIconPreference$IZatAppPreference;->mChecked:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p0, p1}, Lcom/android/settings/location/DimmableIZatIconPreference;->access$300(Lcom/android/settingslib/widget/apppreference/AppPreference;Z)V

    return-void
.end method
