.class Lcom/android/settings/accounts/AccountPreferenceController$1$1;
.super Ljava/lang/Object;
.source "AccountPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController$1;)V
    .locals 0

    .line 584
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 587
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypePreferences:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 588
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;

    iget-object v1, v1, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypePreferences:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/AccountTypePreference;

    .line 589
    invoke-static {}, Lcom/android/settings/accounts/AccountPreferenceController;->access$200()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountTypePreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 590
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceController$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$300(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;

    iget-object v0, v0, Lcom/android/settings/accounts/AccountPreferenceController$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$300(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 593
    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$1$1;->this$1:Lcom/android/settings/accounts/AccountPreferenceController$1;

    iget-object p0, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->access$300(Lcom/android/settings/accounts/AccountPreferenceController;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method
