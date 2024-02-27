.class public Lr0/l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr0/l$c;->a:I

    iput p2, p0, Lr0/l$c;->b:I

    return-void
.end method
