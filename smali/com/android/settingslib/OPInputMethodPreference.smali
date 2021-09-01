.class public Lcom/android/settingslib/OPInputMethodPreference;
.super Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;
.source "OPInputMethodPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private final mHasPriorityInSorting:Z

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsAllowedByOrganization:Z

.field private final mOnSaveListener:Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/settingslib/OPInputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/OPInputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 109
    iput-object p2, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 110
    iput-boolean p4, p0, Lcom/android/settingslib/OPInputMethodPreference;->mIsAllowedByOrganization:Z

    .line 111
    iput-object p5, p0, Lcom/android/settingslib/OPInputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;

    const-string p4, ""

    .line 113
    invoke-virtual {p0, p4}, Landroidx/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0, p4}, Landroidx/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p3

    .line 118
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.MAIN"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p4}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 126
    :goto_0
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 127
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-static {p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->isValidNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mHasPriorityInSorting:Z

    .line 129
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 130
    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V
    .locals 7

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/OPInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/CharSequence;ZLcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;)V

    if-nez p3, :cond_0

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/R$dimen;->secondary_app_icon_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setIconSize(I)V

    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 224
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 230
    invoke-static {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameListAsSentence(Ljava/util/List;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isImeEnabler()Z
    .locals 0

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTv()Z
    .locals 1

    .line 275
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$showDirectBootWarnDialog$3(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showDirectBootWarnDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 257
    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 264
    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private synthetic lambda$showSecurityWarnDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 0

    .line 235
    invoke-super {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 236
    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mOnSaveListener:Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;

    invoke-interface {p1, p0}, Lcom/android/settingslib/OPInputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settingslib/OPInputMethodPreference;)V

    .line 237
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private showDirectBootWarnDialog()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 284
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 286
    sget v2, Lcom/android/settingslib/R$string;->direct_boot_unaware_dialog_message:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 287
    new-instance v2, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yMl-XX3I3tK-5RiM6_O1-O-FwaI;

    invoke-direct {v2, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yMl-XX3I3tK-5RiM6_O1-O-FwaI;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 288
    new-instance v2, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yH6VYPB5Z40X5PvlMG_brlVWQN0;

    invoke-direct {v2, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$yH6VYPB5Z40X5PvlMG_brlVWQN0;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 291
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityWarnDialog()V
    .locals 6

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 246
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040014

    .line 247
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 248
    iget-object v3, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 250
    sget v4, Lcom/android/settingslib/R$string;->ime_security_warning:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    .line 251
    new-instance v2, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$NtGeHnMX1DAJE-2ckpe_W-H3DV4;

    invoke-direct {v2, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$NtGeHnMX1DAJE-2ckpe_W-H3DV4;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    .line 262
    new-instance v2, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$w8BKl7yJpqRQX2CpoF6jWCdUeAk;

    invoke-direct {v2, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$w8BKl7yJpqRQX2CpoF6jWCdUeAk;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    new-instance v0, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;

    invoke-direct {v0, p0}, Lcom/android/settingslib/-$$Lambda$OPInputMethodPreference$USk-e2EHba4uew-PWvqFx-6i4X0;-><init>(Lcom/android/settingslib/OPInputMethodPreference;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 271
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/OPInputMethodPreference;Ljava/text/Collator;)I
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 298
    :cond_0
    iget-boolean v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mHasPriorityInSorting:Z

    iget-boolean v2, p1, Lcom/android/settingslib/OPInputMethodPreference;->mHasPriorityInSorting:Z

    const/4 v3, -0x1

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 302
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    .line 303
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 305
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    .line 307
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    if-eqz v1, :cond_4

    move p0, v3

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    if-eqz v2, :cond_5

    move v0, v3

    :cond_5
    sub-int/2addr p0, v0

    return p0
.end method

.method public synthetic lambda$showDirectBootWarnDialog$3$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/OPInputMethodPreference;->lambda$showDirectBootWarnDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$showDirectBootWarnDialog$4$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/OPInputMethodPreference;->lambda$showDirectBootWarnDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$showSecurityWarnDialog$0$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/OPInputMethodPreference;->lambda$showSecurityWarnDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$showSecurityWarnDialog$1$OPInputMethodPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/OPInputMethodPreference;->lambda$showSecurityWarnDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$showSecurityWarnDialog$2$OPInputMethodPreference(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->lambda$showSecurityWarnDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isImeEnabler()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-direct {p0, p2}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    return p2

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 161
    iget-object p1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isTv()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isTv()Z

    move-result p1

    if-nez p1, :cond_5

    .line 164
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->showDirectBootWarnDialog()V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/android/settingslib/OPInputMethodPreference;->setCheckedInternal(Z)V

    goto :goto_1

    .line 169
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->showSecurityWarnDialog()V

    :cond_5
    :goto_1
    return p2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 178
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isImeEnabler()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 183
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 185
    :try_start_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 191
    sget-object v2, Lcom/android/settingslib/OPInputMethodPreference;->TAG:Ljava/lang/String;

    const-string v3, "IME\'s Settings Activity Not Found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    sget v1, Lcom/android/settingslib/R$string;->failed_to_open_app_settings_toast:I

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v2, v3

    .line 192
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return v0
.end method

.method public updatePreferenceViews()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mIsAllowedByOrganization:Z

    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 212
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 211
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/OPInputMethodPreference;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v1, p0, Lcom/android/settingslib/OPInputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/android/settingslib/OPInputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
