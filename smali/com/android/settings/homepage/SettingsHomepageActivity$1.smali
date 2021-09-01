.class Lcom/android/settings/homepage/SettingsHomepageActivity$1;
.super Landroid/os/Handler;
.source "SettingsHomepageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/SettingsHomepageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity$1;->this$0:Lcom/android/settings/homepage/SettingsHomepageActivity;

    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->access$000(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    :goto_0
    return-void
.end method
