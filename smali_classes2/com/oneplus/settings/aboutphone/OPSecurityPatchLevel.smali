.class public Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;
.super Landroidx/preference/Preference;
.source "OPSecurityPatchLevel.java"


# static fields
.field private static final INTENT_URI_DATA:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://source.android.com/security/bulletin/"

    .line 22
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->INTENT_URI_DATA:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/applications/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 45
    sget p1, Lcom/android/settings/R$layout;->op_security_patch_level:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 66
    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object p0

    .line 69
    sget v0, Lcom/android/settings/R$id;->security_patch:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 70
    sget v0, Lcom/android/settings/R$id;->security_patch_level_value:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 50
    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    sget-object v1, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->INTENT_URI_DATA:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/applications/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-class p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Stop click action on SECURITY_PATCH_VALUE_ID : queryIntentActivities() returns empty"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/OPSecurityPatchLevel;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
