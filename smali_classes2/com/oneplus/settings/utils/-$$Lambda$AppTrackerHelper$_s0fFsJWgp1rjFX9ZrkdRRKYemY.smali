.class public final synthetic Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->lambda$putAnalytics$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
