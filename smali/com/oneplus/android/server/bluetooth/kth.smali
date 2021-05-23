.class public Lcom/oneplus/android/server/bluetooth/kth;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final rtg:I = 0x200

.field static final sis:Ljava/lang/String; = "OpBluetoothStateRecorder"

.field static final tsu:Z = true


# instance fields
.field private you:Ljava/lang/StringBuilder;

.field private zta:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->zta:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string p0, "OpBluetoothStateRecorder"

    const-string v0, "String Builder establish failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private you()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->zta:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->zta:I

    :cond_0
    return-void
.end method


# virtual methods
.method public sis()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Cannot dump bluetooth state"

    return-object p0
.end method

.method public zta(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->zta:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->zta:I

    const/16 v2, 0x200

    if-le v0, v2, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/bluetooth/kth;->you()V

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v2, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v0, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const/4 v1, 0x5

    aput-object v0, v3, v1

    const-string v0, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/kth;->you:Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
