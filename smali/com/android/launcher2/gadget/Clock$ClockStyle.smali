.class public interface abstract Lcom/android/launcher2/gadget/Clock$ClockStyle;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClockStyle"
.end annotation


# virtual methods
.method public abstract getUpdateInterval()I
.end method

.method public abstract initConfig(Ljava/lang/String;)V
.end method

.method public abstract updateAppearance(Ljava/util/Calendar;)V
.end method
