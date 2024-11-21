import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BeTalentSvg {
  static String brandString =
      '<svg width="199" height="39" viewBox="0 0 199 39" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M0 38.6685V0H14.7001C23.6527 0 28.8475 3.75637 28.8475 10.2195C28.8475 15.0807 25.9738 17.8428 21.5527 18.7819C26.6922 19.4447 30.2291 22.1515 30.2291 27.6756C30.2291 34.415 24.9238 38.6685 15.4185 38.6685H0ZM14.9211 6.51841H8.2895V15.9093H14.9211C18.458 15.9093 20.558 14.0864 20.558 11.2139C20.558 8.34135 18.5132 6.51841 14.9211 6.51841ZM15.4737 22.3173H8.2895V32.0949H15.4737C19.4527 32.0949 21.7185 30.2719 21.7185 27.2889C21.7185 24.1402 19.3974 22.3173 15.4737 22.3173Z" fill="white"/><path d="M48.2478 39C38.7978 39 33.1056 33.3102 33.1056 24.5269C33.1056 15.6884 38.9083 9.94333 47.6952 9.94333C56.2057 9.94333 61.9531 15.2464 62.0636 23.5878C62.0636 24.4164 62.0084 25.3555 61.8426 26.2394H41.2293V26.626C41.3951 30.6586 43.9925 33.0892 47.9162 33.0892C51.0662 33.0892 53.2768 31.7082 53.9399 29.0566H61.6215C60.7373 34.5807 55.8189 39 48.2478 39ZM41.3951 21.1572H54.2162C53.6636 17.677 51.2873 15.7436 47.7504 15.7436C44.3794 15.7436 41.8372 17.7875 41.3951 21.1572Z" fill="white"/><path d="M62.5088 4.41926V0H92.4062V4.41926H79.8615V38.6685H75.0535V4.41926H62.5088Z" fill="white"/><path d="M115.221 34.5255H116.658V38.6685H114.171C110.413 38.6685 109.142 37.0665 109.087 34.3045C107.318 36.8456 104.5 39 99.6367 39C93.4472 39 89.2472 35.9065 89.2472 30.7691C89.2472 25.1345 93.1709 21.9858 100.576 21.9858H108.866V20.0524C108.866 16.4065 106.268 14.1969 101.847 14.1969C97.8683 14.1969 95.2156 16.0751 94.663 18.9476H90.1314C90.7945 13.4235 95.2709 10.1643 102.068 10.1643C109.253 10.1643 113.397 13.7549 113.397 20.3286V32.6473C113.397 34.1388 113.95 34.5255 115.221 34.5255ZM108.866 27.1784V25.7974H100.134C96.0998 25.7974 93.834 27.2889 93.834 30.4929C93.834 33.2549 96.2104 35.1331 99.9683 35.1331C105.605 35.1331 108.866 31.8739 108.866 27.1784Z" fill="white"/><path d="M117.931 38.6685V0H122.463V38.6685H117.931Z" fill="white"/><path d="M139.447 39C130.992 39 125.465 33.1997 125.465 24.5821C125.465 16.0198 130.881 10.1643 138.839 10.1643C146.797 10.1643 151.992 15.1912 152.213 23.5326C152.213 24.1402 152.158 24.8031 152.102 25.466H130.218V25.8527C130.384 31.211 133.755 34.9674 139.115 34.9674C143.094 34.9674 146.189 32.8682 147.129 29.2224H151.715C150.61 34.8569 145.968 39 139.447 39ZM130.494 21.7096H147.35C146.908 16.8484 143.592 14.1416 138.894 14.1416C134.75 14.1416 130.936 17.1246 130.494 21.7096Z" fill="white"/><path d="M168.989 10.1643C175.344 10.1643 180.373 13.6445 180.373 22.9802V38.6685H175.842V23.2564C175.842 17.4008 173.134 14.3074 168.215 14.3074C162.91 14.3074 159.705 18.2294 159.705 24.5821V38.6685H155.173V10.4957H159.097L159.705 14.3074C161.363 12.153 164.237 10.1643 168.989 10.1643Z" fill="white"/><path d="M186.04 31.3215V14.6388H180.956V10.4957H186.04V2.59631H190.572V10.4957H197.867V14.6388H190.572V31.2663C190.572 33.6416 191.401 34.5255 193.833 34.5255H198.309V38.6685H193.391C187.975 38.6685 186.04 36.2932 186.04 31.3215Z" fill="white"/></svg>';
  static Widget brand = SvgPicture.string(
    brandString,
    semanticsLabel: 'Be Talent Brand',
  );
}
