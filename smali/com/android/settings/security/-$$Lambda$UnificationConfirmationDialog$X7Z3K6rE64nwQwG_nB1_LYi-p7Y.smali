.class public final synthetic Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/security/SecuritySettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;->f$0:Lcom/android/settings/security/SecuritySettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;->f$0:Lcom/android/settings/security/SecuritySettings;

    invoke-static {p0, p1, p2}, Lcom/android/settings/security/UnificationConfirmationDialog;->lambda$onCreateDialog$0(Lcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V

    return-void
.end method
