.class public Lr0/l$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public final b:D

.field public final c:D


# direct methods
.method public constructor <init>(IDD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr0/l$e;->a:I

    iput-wide p2, p0, Lr0/l$e;->b:D

    iput-wide p4, p0, Lr0/l$e;->c:D

    return-void
.end method
