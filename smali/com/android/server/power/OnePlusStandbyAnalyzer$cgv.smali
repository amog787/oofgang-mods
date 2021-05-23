.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cgv"
.end annotation


# instance fields
.field public sis:I

.field public tsu:I

.field public you:I

.field public zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->you:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->sis:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->tsu:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->you:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->you:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->sis:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->tsu:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->you:I

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->sis:I

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->tsu:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# WiFiInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->sis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->you:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
