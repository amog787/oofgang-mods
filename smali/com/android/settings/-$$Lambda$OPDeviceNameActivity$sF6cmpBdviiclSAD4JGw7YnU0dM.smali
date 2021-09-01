.class public final synthetic Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/OPDeviceNameActivity;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/OPDeviceNameActivity;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;->f$0:Lcom/android/settings/OPDeviceNameActivity;

    iput-object p2, p0, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;->f$0:Lcom/android/settings/OPDeviceNameActivity;

    iget-object p0, p0, Lcom/android/settings/-$$Lambda$OPDeviceNameActivity$sF6cmpBdviiclSAD4JGw7YnU0dM;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/OPDeviceNameActivity;->lambda$createDialog$1$OPDeviceNameActivity(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
