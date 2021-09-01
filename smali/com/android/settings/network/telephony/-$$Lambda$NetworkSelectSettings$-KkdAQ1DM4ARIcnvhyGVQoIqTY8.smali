.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$-KkdAQ1DM4ARIcnvhyGVQoIqTY8;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onPreferenceTreeClick$0$NetworkSelectSettings(Ljava/lang/String;I)V

    return-void
.end method
