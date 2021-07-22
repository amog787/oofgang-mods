.class public final synthetic Lcom/oneplus/settings/-$$Lambda$OPOnlineConfigManager$5pLnhywe5rGpEt08hGrm0Px0kGs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/oneplus/settings/OPOnlineConfigManager;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/-$$Lambda$OPOnlineConfigManager$5pLnhywe5rGpEt08hGrm0Px0kGs;->f$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/settings/-$$Lambda$OPOnlineConfigManager$5pLnhywe5rGpEt08hGrm0Px0kGs;->f$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPOnlineConfigManager;->lambda$parseConfigFromJson$0$OPOnlineConfigManager()V

    return-void
.end method
