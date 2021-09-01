.class Lcom/android/settings/users/UserSettings$13;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Lcom/android/settings/users/EditUserInfoController$OnDialogCompleteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->buildAddUserProfileEditorDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$13;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$13;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeOrCancel()V
    .locals 3

    .line 761
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$13;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {v0}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$13;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->access$1402(Lcom/android/settings/users/UserSettings;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 763
    iget-object p0, p0, Lcom/android/settings/users/UserSettings$13;->this$0:Lcom/android/settings/users/UserSettings;

    invoke-static {p0, v2}, Lcom/android/settings/users/UserSettings;->access$1502(Lcom/android/settings/users/UserSettings;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 764
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onPositive()V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$13;->this$0:Lcom/android/settings/users/UserSettings;

    iget p0, p0, Lcom/android/settings/users/UserSettings$13;->val$userType:I

    invoke-static {v0, p0}, Lcom/android/settings/users/UserSettings;->access$1600(Lcom/android/settings/users/UserSettings;I)V

    return-void
.end method
