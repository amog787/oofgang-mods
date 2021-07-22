.class Lcom/android/settings/wfd/WifiDisplaySettings$2;
.super Landroidx/preference/Preference;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$2;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 453
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 455
    sget v0, Lcom/android/settings/R$id;->left_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 456
    sget v1, Lcom/android/settings/R$string;->wifi_display_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 457
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    sget v0, Lcom/android/settings/R$id;->right_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 465
    sget v0, Lcom/android/settings/R$string;->wifi_display_resume:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 466
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$2$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$2$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$2;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
