.class public Lg1/a;
.super Lf1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lf1/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lk1/c;
    .registers 2

    new-instance v0, Ll1/a;

    invoke-direct {v0}, Ll1/a;-><init>()V

    return-object v0
.end method
