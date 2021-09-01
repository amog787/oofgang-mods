.class public Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;
.super Ljava/lang/Object;
.source "OneplusLunarCalendar.java"


# instance fields
.field private leapMonthFlag:Z

.field private lunarDay:I

.field private lunarMonth:I

.field private lunarYear:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->lunarYear:I

    .line 17
    iput p2, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->lunarMonth:I

    .line 18
    iput p3, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->lunarDay:I

    .line 19
    iput-boolean p4, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->leapMonthFlag:Z

    return-void
.end method


# virtual methods
.method public getYYMMDD()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    iget v1, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->lunarYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-boolean v1, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->leapMonthFlag:Z

    if-eqz v1, :cond_0

    const-string v1, "\u95f0"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_0
    iget v1, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->lunarMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget p0, p0, Lcom/google/android/material/picker/calendar/OneplusLunarCalendar;->lunarDay:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u65e5"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
