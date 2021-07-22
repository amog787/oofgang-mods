.class Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;
.super Landroid/telephony/PhoneStateListener;
.source "DefaultSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/DefaultSubscriptionController;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/DefaultSubscriptionController;I)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;->this$0:Lcom/android/settings/network/telephony/DefaultSubscriptionController;

    iput p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;->val$i:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 348
    iget-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;->this$0:Lcom/android/settings/network/telephony/DefaultSubscriptionController;

    invoke-static {p2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->access$000(Lcom/android/settings/network/telephony/DefaultSubscriptionController;)[I

    move-result-object p2

    iget v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;->val$i:I

    aput p1, p2, v0

    .line 349
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$1;->this$0:Lcom/android/settings/network/telephony/DefaultSubscriptionController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->access$100(Lcom/android/settings/network/telephony/DefaultSubscriptionController;)V

    return-void
.end method
