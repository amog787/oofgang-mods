.class Lcom/android/settings/ResetSystemSettings$3;
.super Ljava/lang/Object;
.source "ResetSystemSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSystemSettings;->showFinalConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSystemSettings;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 169
    invoke-static {}, Lcom/android/settings/ResetSystemSettings;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p2, "onClick: Cancel"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
