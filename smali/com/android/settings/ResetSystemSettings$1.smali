.class Lcom/android/settings/ResetSystemSettings$1;
.super Ljava/lang/Object;
.source "ResetSystemSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetSystemSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetSystemSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/ResetSystemSettings$1;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/android/settings/ResetSystemSettings$1;->this$0:Lcom/android/settings/ResetSystemSettings;

    const/16 v0, 0x907

    invoke-static {p1, v0}, Lcom/android/settings/ResetSystemSettings;->access$000(Lcom/android/settings/ResetSystemSettings;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/android/settings/ResetSystemSettings$1;->this$0:Lcom/android/settings/ResetSystemSettings;

    invoke-virtual {p0}, Lcom/android/settings/ResetSystemSettings;->showFinalConfirmation()V

    :cond_0
    return-void
.end method
