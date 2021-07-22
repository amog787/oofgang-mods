.class Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$1;
.super Ljava/lang/Object;
.source "ZenDeleteRuleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenDeleteRuleDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$arguments:Landroid/os/Bundle;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenDeleteRuleDialog;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$1;->val$arguments:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$1;->val$arguments:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 78
    sget-object p1, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog;->mPositiveClickListener:Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$PositiveClickListener;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$1;->val$id:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/android/settings/notification/zen/ZenDeleteRuleDialog$PositiveClickListener;->onOk(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
