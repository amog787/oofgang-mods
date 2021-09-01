.class public final synthetic Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iput-wide p2, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget-wide v1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$F10XVncref23bmw69zLa-WiI2Ug;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setChecked$2$AutoSelectPreferenceController(J)V

    return-void
.end method
