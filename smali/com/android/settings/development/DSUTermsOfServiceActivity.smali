.class public Lcom/android/settings/development/DSUTermsOfServiceActivity;
.super Landroid/app/Activity;
.source "DSUTermsOfServiceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DSUTermsOfServiceActivity;Landroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/development/DSUTermsOfServiceActivity;->installDSU(Landroid/content/Intent;)V

    return-void
.end method

.method private installDSU(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.dynsystem"

    const-string v1, "com.android.dynsystem.VerificationActivity"

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/android/settings/R$layout;->dsu_terms_of_service:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 43
    sget p1, Lcom/android/settings/R$id;->tos_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_TOS"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/android/settings/development/DSUTermsOfServiceActivity;->installDSU(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget p1, Lcom/android/settings/R$id;->accept:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 54
    new-instance v1, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/development/DSUTermsOfServiceActivity$1;-><init>(Lcom/android/settings/development/DSUTermsOfServiceActivity;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
