.class final Lcom/android/server/am/OnePlusMemoryTracker$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "bio"
.end annotation


# instance fields
.field private sis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private you:I

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->zta:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->zta:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public rtg()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    return p0
.end method

.method public sis()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ssp()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public tsu()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->zta:Ljava/lang/String;

    return-object p0
.end method

.method public you()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method public zta(J)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->you:I

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
