.class public Landroidx/leanback/widget/GuidedDatePickerAction;
.super Landroidx/leanback/widget/GuidedAction;
.source "GuidedDatePickerAction.java"


# instance fields
.field mDate:J

.field mDatePickerFormat:Ljava/lang/String;

.field mMaxDate:J

.field mMinDate:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroidx/leanback/widget/GuidedAction;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 132
    iput-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mMinDate:J

    const-wide v0, 0x7fffffffffffffffL

    .line 133
    iput-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mMaxDate:J

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .line 152
    iget-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDate:J

    return-wide v0
.end method

.method public getDatePickerFormat()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDatePickerFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxDate()J
    .locals 2

    .line 179
    iget-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .line 170
    iget-wide v0, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mMinDate:J

    return-wide v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GuidedDatePickerAction;->setDate(J)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    .line 184
    invoke-virtual {p0}, Landroidx/leanback/widget/GuidedDatePickerAction;->getDate()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setDate(J)V
    .locals 0

    .line 161
    iput-wide p1, p0, Landroidx/leanback/widget/GuidedDatePickerAction;->mDate:J

    return-void
.end method
