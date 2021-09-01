.class public final synthetic Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iput p2, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget p0, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$lx6pxiscZ-gdC70BpNNKuQLu7tE;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setChecked$1$AutoSelectPreferenceController(I)V

    return-void
.end method
