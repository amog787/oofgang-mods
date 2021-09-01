.class public Lcom/android/settings/notification/app/BubbleWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BubbleWarningDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Ljava/lang/String;IILandroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/app/BubblePreferenceController;->applyBubblesApproval(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 69
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/app/BubblePreferenceController;->revertBubblesApproval(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a6

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$BubbleWarningDialogFragment(Ljava/lang/String;IILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->lambda$onCreateDialog$0(Ljava/lang/String;IILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$BubbleWarningDialogFragment(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/app/BubbleWarningDialogFragment;->lambda$onCreateDialog$1(Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "p"

    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    .line 52
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pref"

    .line 53
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->bubbles_feature_disabled_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->bubbles_feature_disabled_dialog_text:I

    .line 58
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    new-instance v4, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v4, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$string;->bubbles_feature_disabled_button_approve:I

    new-instance v3, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$zb-f3DRm8F3MrJafmVGWsb8bXzE;-><init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;II)V

    .line 63
    invoke-virtual {v4, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->bubbles_feature_disabled_button_cancel:I

    new-instance v2, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/notification/app/-$$Lambda$BubbleWarningDialogFragment$Y6GP4VEnUIN1W8PjkyuTZEUgXWA;-><init>(Lcom/android/settings/notification/app/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v4, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPkgPrefInfo(Ljava/lang/String;II)Lcom/android/settings/notification/app/BubbleWarningDialogFragment;
    .locals 2

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    .line 40
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "u"

    .line 41
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "pref"

    .line 42
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
