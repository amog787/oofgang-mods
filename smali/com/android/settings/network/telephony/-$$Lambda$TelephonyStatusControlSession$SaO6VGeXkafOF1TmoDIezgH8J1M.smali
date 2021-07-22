.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

.field public final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/TelephonyStatusControlSession;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;->f$0:Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;->f$1:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;->f$0:Lcom/android/settings/network/telephony/TelephonyStatusControlSession;

    iget-object p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$TelephonyStatusControlSession$SaO6VGeXkafOF1TmoDIezgH8J1M;->f$1:Ljava/util/Collection;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/TelephonyStatusControlSession;->lambda$new$0$TelephonyStatusControlSession(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
