.class public Lcom/android/settings/BugreportPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "BugreportPreference.java"


# instance fields
.field private mFullSummary:Landroid/widget/TextView;

.field private mFullTitle:Landroid/widget/CheckedTextView;

.field private mInteractiveSummary:Landroid/widget/TextView;

.field private mInteractiveTitle:Landroid/widget/CheckedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/BugreportPreference;)Landroid/widget/CheckedTextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/BugreportPreference;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p0

    const/4 p2, 0x0

    const-string v0, "BugreportPreference"

    if-eqz p0, :cond_0

    const-string p0, "Taking full bugreport right away"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p0

    const/16 v1, 0x127

    new-array p2, p2, [Landroid/util/Pair;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 93
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestFullBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "error taking bugreport (bugreportType=Full)"

    .line 95
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "Taking interactive bugreport right away"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p0

    const/16 v1, 0x126

    new-array p2, p2, [Landroid/util/Pair;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 102
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "error taking bugreport (bugreportType=Interactive)"

    .line 104
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onPrepareDialogBuilder(Landroidx/appcompat/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->bugreport_options_dialog:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Lcom/android/settings/R$id;->bugreport_option_interactive_title:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    .line 56
    sget v1, Lcom/android/settings/R$id;->bugreport_option_interactive_summary:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    .line 58
    sget v1, Lcom/android/settings/R$id;->bugreport_option_full_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    .line 59
    sget v1, Lcom/android/settings/R$id;->bugreport_option_full_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    .line 60
    new-instance v1, Lcom/android/settings/BugreportPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/BugreportPreference$1;-><init>(Lcom/android/settings/BugreportPreference;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p0, 0x10406f6

    .line 79
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method
