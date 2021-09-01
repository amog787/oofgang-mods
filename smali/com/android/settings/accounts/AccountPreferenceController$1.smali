.class Lcom/android/settings/accounts/AccountPreferenceController$1;
.super Ljava/lang/Thread;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceController;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceController;

.field final synthetic val$accountTypePreferences:Ljava/util/ArrayList;

.field final synthetic val$accountTypes:[Ljava/lang/String;

.field final synthetic val$helper:Lcom/android/settingslib/accounts/AuthenticatorHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;[Ljava/lang/String;Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypes:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$helper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypePreferences:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 579
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$helper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->this$0:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountPreferenceController;->access$100(Lcom/android/settings/accounts/AccountPreferenceController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 582
    invoke-static {}, Lcom/android/settings/accounts/AccountPreferenceController;->access$200()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController$1;->val$accountTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountPreferenceController$1$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceController$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
