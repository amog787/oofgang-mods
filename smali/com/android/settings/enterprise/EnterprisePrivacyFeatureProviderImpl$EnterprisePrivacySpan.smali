.class public Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;
.super Landroid/text/style/ClickableSpan;
.source "EnterprisePrivacyFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EnterprisePrivacySpan"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 323
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 324
    iput-object p1, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 335
    instance-of v0, p1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;

    iget-object p1, p1, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl$EnterprisePrivacySpan;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 330
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 329
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
