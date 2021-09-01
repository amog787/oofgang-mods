.class public final Lcom/android/settings/development/autofill/AutofillPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "AutofillPreferenceCategory.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance p2, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;-><init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private isAutofillEnabled()Z
    .locals 2

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/autofill/AutofillManager;

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 76
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAutofillEnabled(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillPreferenceCategory"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method


# virtual methods
.method public onAttached()V
    .locals 3

    .line 57
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onAttached()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "autofill_service"

    .line 60
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 68
    invoke-super {p0}, Landroidx/preference/PreferenceGroup;->onDetached()V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->isAutofillEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldDisableDependents(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillPreferenceCategory"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
