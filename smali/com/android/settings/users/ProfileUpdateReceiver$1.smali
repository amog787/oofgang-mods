.class Lcom/android/settings/users/ProfileUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "ProfileUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/ProfileUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/users/ProfileUpdateReceiver;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p2, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V

    .line 42
    iget-object p0, p0, Lcom/android/settings/users/ProfileUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/users/ProfileUpdateReceiver;->access$000(Landroid/content/Context;)V

    return-void
.end method
