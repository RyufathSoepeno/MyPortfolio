.class public final Lq1/f;
.super Lq1/y0;
.source "SourceFile"


# instance fields
.field private final k:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 2

    invoke-direct {p0}, Lq1/y0;-><init>()V

    iput-object p1, p0, Lq1/f;->k:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected z()Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lq1/f;->k:Ljava/lang/Thread;

    return-object v0
.end method
