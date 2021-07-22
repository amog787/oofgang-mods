.class Lcom/android/settings/core/SettingsBaseActivity$1;
.super Ljava/lang/Object;
.source "SettingsBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/core/SettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/core/SettingsBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/core/SettingsBaseActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/core/SettingsBaseActivity$1;->this$0:Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onBackPressed()V

    return-void
.end method
