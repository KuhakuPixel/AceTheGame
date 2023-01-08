.class Landroidx/core/app/AlarmManagerCompat$Api21Impl;
.super Ljava/lang/Object;
.source "AlarmManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/AlarmManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method static createAlarmClockInfo(JLandroid/app/PendingIntent;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 1
    .param p0, "triggerTime"    # J
    .param p2, "showIntent"    # Landroid/app/PendingIntent;

    .line 252
    new-instance v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/AlarmManager$AlarmClockInfo;-><init>(JLandroid/app/PendingIntent;)V

    return-object v0
.end method

.method static setAlarmClock(Landroid/app/AlarmManager;Ljava/lang/Object;Landroid/app/PendingIntent;)V
    .locals 1
    .param p0, "alarmManager"    # Landroid/app/AlarmManager;
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "operation"    # Landroid/app/PendingIntent;

    .line 246
    move-object v0, p1

    check-cast v0, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p0, v0, p2}, Landroid/app/AlarmManager;->setAlarmClock(Landroid/app/AlarmManager$AlarmClockInfo;Landroid/app/PendingIntent;)V

    .line 247
    return-void
.end method
