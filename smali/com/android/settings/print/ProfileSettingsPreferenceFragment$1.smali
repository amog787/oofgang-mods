.class Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ProfileSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

.field final synthetic val$profileSpinnerAdapter:Lcom/android/settings/dashboard/profileselector/UserAdapter;

.field final synthetic val$spinner:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/print/ProfileSettingsPreferenceFragment;Lcom/android/settings/dashboard/profileselector/UserAdapter;Landroid/widget/Spinner;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$profileSpinnerAdapter:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    iput-object p3, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$spinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$profileSpinnerAdapter:Lcom/android/settings/dashboard/profileselector/UserAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/dashboard/profileselector/UserAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 53
    iget-object p2, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 54
    new-instance p3, Landroid/content/Intent;

    iget-object p4, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->this$0:Lcom/android/settings/print/ProfileSettingsPreferenceFragment;

    invoke-virtual {p4}, Lcom/android/settings/print/ProfileSettingsPreferenceFragment;->getIntentActionString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p4, 0x10000000

    .line 55
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p4, 0x8000

    .line 56
    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 59
    iget-object p0, p0, Lcom/android/settings/print/ProfileSettingsPreferenceFragment$1;->val$spinner:Landroid/widget/Spinner;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 60
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
